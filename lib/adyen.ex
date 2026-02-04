defmodule Adyen do
  @moduledoc """
  Elixir client library for the Adyen API.

  This library provides a modern, idiomatic Elixir interface to Adyen's payment
  and financial services APIs. It uses `Req` for HTTP requests and is generated
  from Adyen's official OpenAPI specifications.

  ## Configuration

  Configure your API credentials in `config/config.exs`:

      config :adyen,
        api_key: System.get_env("ADYEN_API_KEY"),
        environment: :test  # or :live

  For production use with live payments, you'll also need:

      config :adyen,
        live_url_prefix: "your-company-prefix"

  ## Usage

  All API operations are organized into namespaces matching the service:

      # Checkout Service
      request = %Adyen.Checkout.CreateCheckoutSessionRequest{...}
      {:ok, session} = Adyen.Checkout.Payments.create_session(request)

      # Transfers Service
      request = %Adyen.Transfers.TransferInfo{...}
      {:ok, transfer} = Adyen.Transfers.Transfers.create_transfer(request)

      # Balance Platform Service
      {:ok, account} = Adyen.BalancePlatform.BalanceAccounts.get_balance_account(id)

  ## Per-request Options

  All API functions accept optional keyword arguments to override configuration:

      Adyen.Checkout.Payments.create_session(request,
        api_key: "different_key",
        environment: :live,
        live_url_prefix: "company"
      )

  ## Error Handling

  All API functions return `{:ok, result}` or `{:error, %Adyen.Error{}}`:

      case Adyen.Checkout.Payments.create_session(request) do
        {:ok, session} ->
          # Handle success
          session.id

        {:error, %Adyen.Error{error_code: "validation"} = error} ->
          # Handle validation errors
          IO.puts(error.message)

        {:error, %Adyen.Error{status: 401}} ->
          # Handle authentication errors
      end

  ## Supported APIs

  - `Adyen.Checkout` - Online payments, sessions, modifications
  - `Adyen.Transfers` - Payouts and transfers
  - `Adyen.BalancePlatform` - Account holders, balance accounts, cards
  """

  @doc """
  Returns the library version.
  """
  def version, do: "0.1.0"
end
