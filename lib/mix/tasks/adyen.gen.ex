defmodule Mix.Tasks.Adyen.Gen do
  @shortdoc "Generates Adyen API clients from OpenAPI specs"

  @moduledoc """
  Generates Adyen API clients based on the configuration in your project.

  This task looks for OpenAPI specifications in the `:adyen` library's `priv/specs` directory
  and generates Elixir code for the requested services.

  ## Examples

      mix adyen.gen

  Or provide services directly via the CLI:

      mix adyen.gen CheckoutService:v71 PayoutService:v68

  ## Configuration

  In your `config/config.exs` (or `runtime.exs`):

      config :adyen,
        services: ["CheckoutService:v71", "PayoutService:v68"],
        output_path: "lib/adyen" # Optional: default is lib/adyen

  The code will be generated from the JSON specifications included in the `:adyen` library.
  """
  use Mix.Task

  @impl Mix.Task
  def run(args) do
    # Ensure dependencies are started
    Application.ensure_all_started(:req)

    {opts, extra, _} = OptionParser.parse(args, switches: [all: :boolean])

    # Use CLI args if provided, otherwise fall back to application config
    services =
      cond do
        opts[:all] -> Adyen.Generator.get_all_services()
        Enum.any?(extra) -> extra
        true -> Application.get_env(:adyen, :services, [])
      end

    output_path = Application.get_env(:adyen, :output_path, "generated_lib")

    if Enum.empty?(services) do
      display_available_services()

      Mix.shell().info(
        "\nNo Adyen services configured. Add them to `config :adyen, services: [...]` or pass as arguments or use --all."
      )
    else
      case Adyen.Generator.generate_all(services, output_path) do
        {:ok, results} ->
          for result <- results do
            case result do
              {:ok, {service, version, location}} ->
                Mix.shell().info("Successfully generated #{service} #{version} into #{location}.")

              {:error, reason} ->
                Mix.shell().error(reason)
            end
          end

        {:error, reason} ->
          Mix.shell().error(reason)
      end
    end
  end

  defp display_available_services do
    specs_dir = Adyen.Generator.get_specs_dir()
    Mix.shell().info("Available Adyen services in #{specs_dir}:")

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
      |> Enum.each(&Mix.shell().info("  - #{&1}"))
    end
  end
end
