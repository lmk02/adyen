defmodule Adyen do
  @moduledoc """
  Elixir client library for the Adyen API.

  This library provides a modern, idiomatic Elixir interface to Adyen's payment
  and financial services APIs.

  ## Configuration

  Configure the services you want to generate modules for, as well as specific API keys for each service, in your `config/config.exs`:

      config :adyen,
        services: ["CheckoutService:v71", "PayoutService:v68"],
        api_key: System.get_env("ADYEN_API_KEY"), # Global fallback API key
        CheckoutService: [
          api_key: System.get_env("ADYEN_CHECKOUT_API_KEY")
        ]

  ## Dynamic Generation

  All API client modules are generated at compile-time based on the services
  specified in the configuration. This ensures a lean library that only
  includes what you need.
  """

  @doc """
  Returns the library version.
  """
  def version, do: "0.1.0"
end

# Handle on-the-fly generation during compilation
# Application.compile_env works during compilation if configured in the parent project.
services = Application.compile_env(:adyen, :services, [])

if Enum.any?(services) do
  # Ensure Adyen.Codegen is loaded (it should be as it is compiled earlier or parallel)
  # Iterate and evaluate each module AST
  for service_string <- services do
    case String.split(service_string, ":") do
      [service, version] ->
        asts = Adyen.Codegen.generate_ast(service, version)

        for ast <- asts do
          # Evaluation of the defmodule AST will define the module in the BEAM
          Code.eval_quoted(ast, [], __ENV__)
        end

      _ ->
        nil
    end
  end
end
