defmodule GenerateAll do
  @specs_dir "priv/specs"

  def run do
    @specs_dir
    |> File.ls!()
    |> Enum.filter(&String.ends_with?(&1, ".json"))
    |> Enum.each(&generate_for_file/1)
  end

  defp generate_for_file(filename) do
    service = parse_service_name(filename)
    profile = "adyen_#{get_dir_name(service)}"
    
    IO.puts("\n=== Generating code for #{service} (Profile: #{profile}) ===")
    
    # Run mix api.gen for each profile and collect output
    case System.cmd("mix", ["api.gen", profile, Path.join(@specs_dir, filename)], stderr_to_stdout: true) do
      {output, 0} -> 
        IO.puts(output)
        IO.puts("Successfully generated #{service}")
      {output, code} -> 
        IO.puts(output)
        IO.puts("Failed to generate #{service} with exit code #{code}")
    end
  end

  defp parse_service_name(filename) do
    filename |> String.split("-") |> List.first()
  end

  @special_mappings %{
    "PaymentService" => "payments",
    "PayoutService" => "payouts",
    "TransferService" => "transfers",
    "FundService" => "funds",
    "AccountService" => "accounts",
    "TerminalAPI" => "terminal_api",
    "TfmAPIService" => "tfm_api"
  }

  defp get_dir_name(service) do
    case Map.get(@special_mappings, service) do
      dir when is_binary(dir) -> dir
      nil ->
        service
        |> String.replace("Service", "")
        |> Macro.underscore()
    end
  end
end

GenerateAll.run()
