defmodule Adyen.Generator do
  @moduledoc """
  Logic for generating Adyen API clients from OpenAPI specifications.
  """

  @doc """
  Generates code for the configured services.
  """
  def generate_all(services \\ nil, output_path \\ nil) do
    specs_dir = get_specs_dir()
    services = services || Application.get_env(:adyen, :services, [])
    output_path = output_path || Application.get_env(:adyen, :output_path, "generated_lib")

    with :ok <- validate_specs_dir(specs_dir),
         {:ok, false} <- check_services_empty(services) do
      {:ok, do_generate_all(services, specs_dir, output_path)}
    else
      {:ok, true} -> {:ok, []}
      error -> error
    end
  end

  defp do_generate_all(services, specs_dir, output_path) do
    services
    |> Task.async_stream(
      fn arg ->
        case String.split(arg, ":") do
          [service, version] -> process_service(service, version, specs_dir, output_path)
          _ -> {:error, "Invalid service format: #{arg}. Expected ServiceName:vXX"}
        end
      end,
      max_concurrency: System.schedulers_online(),
      timeout: :infinity
    )
    |> Enum.map(fn {:ok, result} -> result end)
  end

  defp validate_specs_dir(dir) do
    if File.dir?(dir), do: :ok, else: {:error, "Could not find Adyen specs directory at #{dir}"}
  end

  defp check_services_empty(services), do: {:ok, Enum.empty?(services)}

  def get_specs_dir do
    case :code.priv_dir(:adyen) do
      {:error, :bad_name} ->
        # Fallback if the app isn't loaded (e.g., during development)
        "priv/specs/json"

      path ->
        Path.join([Path.expand(path), "specs", "json"])
    end
  end

  def get_all_services do
    specs_dir = get_specs_dir()

    if File.dir?(specs_dir) do
      specs_dir
      |> File.ls!()
      |> Enum.filter(&String.ends_with?(&1, ".json"))
      |> Enum.map(fn filename ->
        filename
        |> String.replace(".json", "")
        |> String.replace("-v", ":v")
      end)
      |> Enum.sort()
    else
      []
    end
  end

  defp process_service(service, version, specs_dir, output_path) do
    filename = "#{service}-#{version}.json"
    spec_path = Path.join(specs_dir, filename)

    if File.exists?(spec_path) do
      generate_code(service, version, spec_path, output_path)
    else
      {:error, "Specification not found: #{filename}"}
    end
  end

  defp generate_code(service, version, spec_path, base_output_path) do
    clean_name = String.replace(service, "Service", "")
    base_module = Module.concat(["Adyen", clean_name, String.capitalize(version)])
    location = Path.join([base_output_path, Macro.underscore(clean_name), version])
    profile_name = String.to_atom("adyen_#{Macro.underscore(service)}_#{version}")

    # Register the profile dynamically for oapi_generator
    Application.put_env(:oapi_generator, profile_name,
      output: [
        base_module: base_module,
        location: location,
        default_client: Adyen.Client
      ]
    )

    OpenAPI.run(to_string(profile_name), [spec_path])
    {:ok, {service, version, location}}
  end
end
