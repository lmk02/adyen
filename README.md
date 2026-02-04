# Adyen

Elixir client library for the [Adyen API](https://docs.adyen.com/).

Built with [oapi_generator](https://github.com/aj-foster/open-api-generator) from Adyen's official OpenAPI specs and [Req](https://github.com/wojtekmach/req) for HTTP requests.

## Installation

Add `adyen` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:adyen, "~> 0.1.0"}
  ]
end
```

## Configuration

Configure your API key in `config/config.exs`:

```elixir
config :adyen,
  api_key: System.get_env("ADYEN_API_KEY"),
  environment: :test  # or :live
```

For live payments, you also need your live URL prefix:

```elixir
config :adyen,
  api_key: System.get_env("ADYEN_API_KEY"),
  environment: :live,
  live_url_prefix: "your-company-prefix"  # From Adyen Customer Area
```

## Usage

### Checkout Service

**Create a Checkout Session:**

```elixir
request = %Adyen.Checkout.CreateCheckoutSessionRequest{
  merchantAccount: "YOUR_MERCHANT_ACCOUNT",
  amount: %Adyen.Checkout.Amount{value: 1000, currency: "EUR"},
  reference: "order-123",
  returnUrl: "https://your-site.com/checkout/return"
}

{:ok, session} = Adyen.Checkout.Payments.create_session(request)
# => %Adyen.Checkout.CreateCheckoutSessionResponse{id: "CS...", ...}
```

**Get Payment Methods:**

```elixir
request = %Adyen.Checkout.PaymentMethodsRequest{
  merchantAccount: "YOUR_MERCHANT_ACCOUNT",
  countryCode: "NL",
  amount: %Adyen.Checkout.Amount{value: 1000, currency: "EUR"}
}

{:ok, methods} = Adyen.Checkout.Payments.create_payment_methods(request)
```

### Transfers Service

**Make a Transfer:**

```elixir
request = %Adyen.Transfers.TransferInfo{
  amount: %Adyen.Transfers.Amount{value: 1000, currency: "EUR"},
  balanceAccountId: "BA...",
  counterparty: %Adyen.Transfers.CounterpartyInfoV3{balanceAccountId: "BA..."},
  description: "Payment to seller"
}

{:ok, transfer} = Adyen.Transfers.Transfers.create_transfer(request)
```

### Balance Platform Service

**Get Balance Account:**

```elixir
{:ok, account} = Adyen.BalancePlatform.BalanceAccounts.get_balance_account("BA...")
```

## Structure

The library is organized by service:

- `Adyen.Checkout.*` - [Checkout API](https://docs.adyen.com/api-explorer/Checkout/latest/overview)
- `Adyen.Transfers.*` - [Transfers API](https://docs.adyen.com/api-explorer/transfers/latest/overview)
- `Adyen.BalancePlatform.*` - [Balance Platform API](https://docs.adyen.com/api-explorer/balanceplatform/latest/overview)

## Per-request Options

Override configuration for individual requests:

```elixir
Adyen.Checkout.Payments.create_session(request,
  api_key: "different_api_key",
  environment: :live,
  live_url_prefix: "company-prefix"
)
```

## Error Handling

All API functions return `{:ok, result}` or `{:error, %Adyen.Error{}}`:

```elixir
case Adyen.Checkout.Payments.create_payment(request) do
  {:ok, response} ->
    IO.puts("Payment successful: #{response.pspReference}")

  {:error, %Adyen.Error{error_code: "validation"} = error} ->
    IO.puts("Validation error: #{error.message}")

  {:error, %Adyen.Error{status: 401}} ->
    IO.puts("Authentication failed")
end
```

## Regenerating from OpenAPI Specs

The library is generated from Adyen's OpenAPI specs. To regenerate:

```bash
# Checkout API
mix api.gen adyen_checkout priv/specs/CheckoutService-v71.json

# Transfers API
mix api.gen adyen_transfers priv/specs/TransferService-v4.json

# Balance Platform API
mix api.gen adyen_balance_platform priv/specs/BalancePlatformService-v2.json
```

## License

MIT
