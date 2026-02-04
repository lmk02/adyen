defmodule Adyen.Client do
  @moduledoc """
  HTTP client for Adyen API requests using Req.

  This module implements the `request/1` callback expected by `oapi_generator`.
  All generated API operations call this module to execute HTTP requests through `Req`.

  ## Configuration

  Configure your API key and environment in your application configuration:

      config :adyen,
        api_key: "your_api_key",
        environment: :test  # or :live

  ## Per-request Options

  You can override configuration on a per-request basis by passing options to any API function.
  These options are passed down to the `request/1` function:

      Adyen.Checkout.Payments.create_session(request,
        api_key: "other_key",
        environment: :live
      )

  Supported options:
  - `:api_key` - Overrides the API key
  - `:environment` - Overrides the environment (:test or :live)
  - `:live_url_prefix` - Required for live Checkout API requests
  - `:client` - Use a custom client module (defaults to `Adyen.Client`)

  """

  require Logger

  @doc """
  Execute an HTTP request to the Adyen API.

  This is the callback function that oapi_generator uses for all API operations.
  """
  @spec request(map()) :: {:ok, any()} | {:error, Adyen.Error.t()}
  def request(%{method: method, url: url, opts: opts} = req) do
    body = Map.get(req, :body)
    query = Map.get(req, :query, [])
    response_mappings = Map.get(req, :response, [])

    service = detect_service_from_req(req)
    opts_with_service = Keyword.put(opts, :service, service)

    api_key = Adyen.Config.api_key(opts_with_service)
    base_url = Adyen.Config.base_url(opts_with_service)

    request =
      Req.new(
        base_url: base_url,
        headers: [
          {"x-api-key", api_key},
          {"content-type", "application/json"}
        ],
        retry: :transient,
        max_retries: 3,
        decode_body: false
      )

    request_opts =
      [method: method, url: url]
      |> add_body_opts(body)
      |> maybe_add_query(query)

    case Req.request(request, request_opts) do
      {:ok, %Req.Response{status: status, body: body}} ->
        handle_response(status, body, response_mappings)

      {:error, exception} ->
        {:error, Adyen.Error.from_exception(exception)}
    end
  end

  defp detect_service_from_req(req) do
    case Map.get(req, :call) do
      {module, _func} -> detect_service(module)
      _ -> :checkout
    end
  end

  defp detect_service(module) do
    module_name = to_string(module)

    cond do
      String.contains?(module_name, "Transfers") -> :transfers
      String.contains?(module_name, "BalancePlatform") -> :balance_platform
      true -> :checkout
    end
  end

  defp handle_response(status, body, response_mappings) do
    case find_response_type(status, response_mappings) do
      nil when status in 200..299 ->
        {:ok, decode_json(body)}

      nil ->
        {:error, Adyen.Error.from_response(status, decode_json(body))}

      :unknown ->
        {:ok, decode_json(body)}

      {module, :t} ->
        prototype = prototype_for(module)
        decoded_body = Poison.decode!(body, as: prototype)

        if status in 200..299 do
          {:ok, decoded_body}
        else
          {:error, decoded_body}
        end
    end
  end

  defp decode_json(body) do
    case Poison.decode(body) do
      {:ok, map} -> map
      _ -> body
    end
  end

  # Recursively build a prototype struct for Poison to decode into
  defp prototype_for(module) do
    if function_exported?(module, :__fields__, 1) do
      fields = module.__fields__(:t)

      proto_fields =
        Enum.reduce(fields, [], fn {name, type}, acc ->
          case resolve_type(type) do
            nil -> acc
            val -> [{name, val} | acc]
          end
        end)

      struct(module, proto_fields)
    else
      struct(module)
    end
  end

  defp resolve_type({module, :t}), do: prototype_for(module)
  defp resolve_type([{module, :t}]), do: [prototype_for(module)]
  defp resolve_type(_), do: nil

  defp find_response_type(status, response_mappings) do
    Enum.find_value(response_mappings, fn
      {^status, type} -> type
      _ -> nil
    end)
  end

  defp add_body_opts(opts, nil), do: opts

  defp add_body_opts(opts, body) do
    {:ok, json} = Poison.encode(body)
    Keyword.put(opts, :body, json)
  end

  defp maybe_add_query(opts, []), do: opts
  defp maybe_add_query(opts, query), do: Keyword.put(opts, :params, query)
end
