# Adyen Elixir SDK

A lean, on-the-fly code-generation Elixir client library for the [Adyen API](https://docs.adyen.com/).

This SDK provides core HTTP client components and dynamically generates exactly the API versions you need at compile-time. All OpenAPI specifications are bundled within the library via a git submodule in `priv/specs`.

## Features

- **Pre-generated Modules:** All Adyen API modules are pre-generated within the library.
- **Selective Compilation:** Include only the services and versions you need in your configuration. Only these will be compiled into your application, keeping it lean.
- **Always Up-to-Date:** Bundles the full Adyen OpenAPI spec repository.

## Installation

Add `adyen` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:adyen, "~> 0.1.0"}
  ]
end
```

> **Note:** If you are developing this library or using it from source, ensure you initialize the submodules:
> `git submodule update --init --recursive`

## Configuration

In your `config/config.exs` (or `runtime.exs`), specify the Adyen services and versions you want to include:

```elixir
config :adyen,
  # 1. Compile-time settings: Defines which services and exact versions to generate modules for
  services: [
    "CheckoutService:v71",
    "PayoutService:v68"
  ],
  # 2. Global fallback API key (optional)
  api_key: System.get_env("ADYEN_API_KEY"),
  
  # 3. Service-specific configuration
  CheckoutService: [
    # Optional: overrides the default `v71` or whatever is inferred from the caller module
    # version: "v71",
    api_key: System.get_env("ADYEN_CHECKOUT_API_KEY")
  ],
  PayoutService: [
    api_key: System.get_env("ADYEN_PAYOUT_API_KEY")
  ]
```

Available services can be found in the `priv/specs/json` directory of the library.

## Usage

Once configured, only the specified services will be compiled. The modules are available under the `Adyen` namespace.

### Checkout Service (Example for v71)

```elixir
alias Adyen.Checkout.V71, as: CheckoutV71

request = %CheckoutV71.CreateCheckoutSessionRequest{
  merchantAccount: "YOUR_MERCHANT_ACCOUNT",
  amount: %CheckoutV71.Amount{value: 1000, currency: "EUR"},
  reference: "order-123",
  returnUrl: "https://your-site.com/checkout/return"
}

{:ok, session} = CheckoutV71.Payments.post_sessions(request)
```

## License

MIT
