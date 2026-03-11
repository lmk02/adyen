defmodule Mix.Tasks.Adyen.Clean do
  @shortdoc "Removes generated Adyen API clients"

  @moduledoc """
  Cleans up generated Adyen API clients.

  ## Examples

      mix adyen.clean
  """
  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    output_path = Application.get_env(:adyen, :output_path, "lib/adyen")

    if File.exists?(output_path) do
      Mix.shell().info("Cleaning generated code in #{output_path}...")

      # We only want to delete subdirectories that look like generated services
      # (e.g., checkout, payout, etc.) to avoid deleting the base files (client.ex, config.ex, etc.)
      # if they are in the same directory.

      output_path
      |> File.ls!()
      |> Enum.map(&Path.join(output_path, &1))
      |> Enum.filter(&File.dir?/1)
      |> Enum.each(fn dir ->
        Mix.shell().info("  Removing #{dir}...")
        File.rm_rf!(dir)
      end)

      Mix.shell().info("Adyen cleanup complete.")
    else
      Mix.shell().info("No generated code found in #{output_path}.")
    end
  end
end
