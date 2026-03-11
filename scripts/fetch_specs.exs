defmodule FetchSpecs do
  @github_api "https://api.github.com/repos/Adyen/adyen-openapi/contents/json"
  @raw_url "https://raw.githubusercontent.com/Adyen/adyen-openapi/main/json/"
  @output_dir "priv/specs"
  @profiles_config "config/oapi_generator_profiles.exs"

  @special_mappings %{
    "PaymentService" => {"Payments", "payments"},
    "PayoutService" => {"Payouts", "payouts"},
    "TransferService" => {"Transfers", "transfers"},
    "FundService" => {"Funds", "funds"},
    "AccountService" => {"Accounts", "accounts"},
    "TerminalAPI" => {"TerminalAPI", "terminal_api"},
    "TfmAPIService" => {"TfmAPI", "tfm_api"}
  }

  def run do
    setup_directory()

    IO.puts("Fetching file list from GitHub...")
    case Req.get(@github_api) do
      {:ok, %{status: 200, body: files}} ->
        latest_specs = 
          files
          |> Enum.map(& &1["name"])
          |> Enum.filter(&String.ends_with?(&1, ".json"))
          |> Enum.map(&parse_filename/1)
          |> Enum.filter(& &1)
          |> Enum.group_by(fn {service, _version, _filename} -> service end)
          |> Enum.map(fn {_service, versions} ->
            versions |> Enum.max_by(fn {_service, version, _filename} -> version end)
          end)
          |> Enum.sort()

        Enum.each(latest_specs, &download_file/1)
        generate_profiles_config(latest_specs)
        
        IO.puts("\nFinished fetching all latest specifications and updating configuration.")

      {:ok, %{status: status}} ->
        IO.puts("Error: Received status #{status} from GitHub API.")
      {:error, reason} ->
        IO.puts("Error fetching file list: #{inspect(reason)}")
    end
  end

  defp setup_directory do
    if File.exists?(@output_dir) do
      IO.puts("Cleaning existing specs in #{@output_dir}...")
      File.rm_rf!(@output_dir)
    end
    File.mkdir_p!(@output_dir)
  end

  defp parse_filename(filename) do
    # Expected format: ServiceName-v123.json or ServiceName-v1.json
    case Regex.run(~r/^(.*)-v(\d+)\.json$/, filename) do
      [_, service, version_str] ->
        {service, String.to_integer(version_str), filename}
      _ ->
        nil
    end
  end

  defp download_file({_service, _version, filename}) do
    url = @raw_url <> filename
    path = Path.join(@output_dir, filename)

    IO.puts("Downloading #{filename}...")
    case Req.get(url) do
      {:ok, %{status: 200, body: body}} ->
        File.write!(path, body)
      {:error, reason} ->
        IO.puts("Error downloading #{filename}: #{inspect(reason)}")
      other ->
        IO.puts("Failed to download #{filename}: #{inspect(other)}")
    end
  end

  defp generate_profiles_config(latest_specs) do
    IO.puts("Generating #{@profiles_config}...")
    
    content = [
      "import Config\n\n",
      "# Automatically generated profiles for oapi_generator\n",
      "# Run with: mix api.gen adyen_<service_name> priv/specs/<filename>\n\n"
    ]

    profiles_content = Enum.map(latest_specs, fn {service, _version, filename} ->
      {module_part, dir_part} = get_mapping(service)
      profile_name = "adyen_#{dir_part}"
      
      """
      config :oapi_generator,
        #{profile_name}: [
          output: [
            base_module: Adyen.#{module_part},
            location: \"lib/adyen/#{dir_part}\",
            default_client: Adyen.Client
          ]
        ]
      """
    end)

    File.write!(@profiles_config, [content | profiles_content])
  end

  defp get_mapping(service) do
    case Map.get(@special_mappings, service) do
      {module, dir} -> {module, dir}
      nil ->
        # Default: Strip "Service" if it exists, then convert to CamelCase for module and snake_case for dir
        name = String.replace(service, "Service", "")
        {name, Macro.underscore(name)}
    end
  end
end

FetchSpecs.run()
