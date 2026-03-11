defmodule Adyen.Config do
  @moduledoc """
  Configuration handling for the Adyen library.
  """

  specs_map =
    "../../priv/specs/json"
    |> Path.expand(__DIR__)
    |> Path.join("*.json")
    |> Path.wildcard()
    |> Enum.reduce(%{}, fn path, acc ->
      filename = Path.basename(path, ".json")

      case String.split(filename, "-") do
        [service, version_str] ->
          json = File.read!(path)

          url =
            case Regex.run(~r/"servers"\s*:\s*\[\s*\{\s*"url"\s*:\s*"([^"]+)"/, json) do
              [_, u] ->
                u

              _ ->
                case Regex.run(~r/"url"\s*:\s*"([^"]+)"/, json) do
                  [_, u] -> u
                  _ -> nil
                end
            end

          version_num =
            case Regex.run(~r/v(\d+)/, version_str) do
              [_, num] -> String.to_integer(num)
              _ -> 0
            end

          service_map = Map.get(acc, service, %{})
          service_map = Map.put(service_map, version_str, %{url: url, num: version_num})
          Map.put(acc, service, service_map)

        _ ->
          acc
      end
    end)

  @specs specs_map

  @latest_versions Map.new(@specs, fn {service, versions} ->
                     {latest_ver_str, _} = Enum.max_by(versions, fn {_ver, %{num: num}} -> num end)
                     {service, latest_ver_str}
                   end)

  @valid_services Map.keys(@specs)

  for {service, versions} <- @specs do
    for {version, info} <- versions do
      defp base_url_from_spec(unquote(service), unquote(version)), do: unquote(info.url)
    end
  end

  defp base_url_from_spec(_, _), do: nil

  @doc """
  Get the latest version available in the OpenAPI specs for a given service.
  """
  @spec latest_version(String.t()) :: String.t()
  for {service, latest_ver} <- @latest_versions do
    def latest_version(unquote(service)), do: unquote(latest_ver)
  end

  def latest_version(_), do: "v1"

  @doc """
  Get the list of valid services.
  """
  @spec valid_services() :: list(String.t())
  def valid_services, do: unquote(@valid_services)

  @doc """
  Resolve a service name to its canonical form.
  """
  @spec resolve_service_name(String.t()) :: String.t()
  def resolve_service_name(name) do
    cond do
      name in valid_services() -> name
      (name <> "Service") in valid_services() -> name <> "Service"
      true -> "CheckoutService"
    end
  end

  @doc """
  Get the exact version configured for a service, or its latest available.
  """
  @spec version(String.t(), String.t() | nil) :: String.t()
  def version(service_name, fallback_version \\ nil) do
    service_config = config_for(service_name)

    Keyword.get(service_config, :version) ||
      fallback_version ||
      latest_version(resolve_service_name(service_name))
  end

  @doc """
  Get the API key for a specific service.
  """
  @spec api_key(String.t(), keyword()) :: String.t() | nil
  def api_key(service_name, opts \\ []) do
    service_config = config_for(service_name)

    key =
      Keyword.get(opts, :api_key) ||
        Keyword.get(service_config, :api_key) ||
        Application.get_env(:adyen, :api_key)

    case key do
      k when is_binary(k) ->
        k

      nil ->
        nil

      _ ->
        raise ArgumentError,
              "Adyen API key must be a string. Got: #{inspect(key)}"
    end
  end

  @doc """
  Get the current environment (:test or :live).
  """
  @spec environment(String.t(), keyword()) :: :test | :live
  def environment(service_name, opts \\ []) do
    service_config = config_for(service_name)

    env =
      Keyword.get(opts, :environment) ||
        Keyword.get(service_config, :environment) ||
        Application.get_env(:adyen, :environment)

    case env do
      :live -> :live
      "live" -> :live
      _ -> :test
    end
  end

  @doc """
  Get the base URL for API requests mapped directly from the JSON.
  """
  @spec base_url(String.t(), String.t(), keyword()) :: String.t()
  def base_url(service_name, version, opts \\ []) do
    env = environment(service_name, opts)
    resolved_name = resolve_service_name(service_name)
    service_config = config_for(service_name)

    prefix =
      Keyword.get(opts, :live_prefix) ||
        Keyword.get(service_config, :live_prefix) ||
        Application.get_env(:adyen, :live_prefix)

    case {resolved_name, env, prefix} do
      {"CheckoutService", :live, nil} ->
        raise ArgumentError,
              "live_prefix is required for live Checkout API. " <>
                "Get this from your Adyen Customer Area under Developers > API URLs."

      {"CheckoutService", :live, p} ->
        "https://#{p}-checkout-live.adyenpayments.com/checkout/#{version}"

      # Default behavior retrieves the test URL extracted statically from the OpenAPI schemas mapping
      {resolved, :live, _} ->
        case base_url_from_spec(resolved, version) do
          nil -> raise ArgumentError, "No base URL found for #{resolved} version #{version}"
          url -> String.replace(url, "test", "live")
        end

      {resolved, _, _} ->
        case base_url_from_spec(resolved, version) do
          nil -> raise ArgumentError, "No base URL found for #{resolved} version #{version}"
          url -> url
        end
    end
  end

  defp config_for(service_name) do
    atom_name = String.to_existing_atom(service_name)
    Application.get_env(:adyen, atom_name, [])
  rescue
    ArgumentError -> []
  end
end
