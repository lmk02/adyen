defmodule Adyen do
  @moduledoc """
  Elixir client library for the Adyen API.

  This library provides a modern, idiomatic Elixir interface to Adyen's payment
  and financial services APIs.

  ## Configuration

  Configure the services you want to use in your `config/config.exs`.
  Note that only services listed in `:services` will be compiled into your application.

      config :adyen,
        services: ["CheckoutService:v71", "PayoutService:v68"],
        api_key: System.get_env("ADYEN_API_KEY")

  ## Static Generation

  This library uses pre-generated modules for Adyen APIs. To keep the library lean,
  only the configured services are compiled.
  """

  @doc """
  Returns the library version.
  """
  def version, do: "0.1.0"
end
