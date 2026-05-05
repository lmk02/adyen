# Adyen Elixir SDK

An Elixir client library for the [Adyen API](https://docs.adyen.com/). Ships with all 120+ OpenAPI specs bundled and generates exactly the services and versions you need at compile time — nothing more.

## How it works

1. Declare the services and versions you need in config
2. Run `mix adyen.gen` to generate the client modules
3. Only the specified services compile into your app

---

## Installation

```elixir
# mix.exs
def deps do
  [
    {:adyen, "~> 0.3"}
  ]
end
```

Requires Elixir **1.19+**.

If using from source, initialize the bundled specs submodule first:

```sh
git submodule update --init --recursive
```

---

## Configuration

```elixir
# config/config.exs
config :adyen,
  services: [
    "CheckoutService:v71",
    "PayoutService:v68"
  ],
  api_key: System.get_env("ADYEN_API_KEY"),
  environment: :test  # :test (default) or :live
```

**Service-specific overrides:**

```elixir
config :adyen,
  CheckoutService: [
    api_key: System.get_env("ADYEN_CHECKOUT_API_KEY"),
    environment: :live,
    live_prefix: "your-prefix"  # required for live Checkout — find it in your Adyen Customer Area
  ],
  PayoutService: [
    api_key: System.get_env("ADYEN_PAYOUT_API_KEY")
  ]
```

**Environment variable alternative** (overrides config at compile time):

```sh
ADYEN_SERVICES="CheckoutService:v71,PayoutService:v68" mix compile
```

---

## Generating clients

After configuring your services, generate the client modules:

```sh
# Generate services from config
mix adyen.gen

# Or pass services directly
mix adyen.gen CheckoutService:v71 PayoutService:v68

# Generate all available services
mix adyen.gen --all
```

Generated modules land in `generated_lib/` by default. Customise with:

```elixir
config :adyen, output_path: "lib/adyen/generated"
```

To remove generated files:

```sh
mix adyen.clean
```

---

## Usage

Generated modules follow the pattern `Adyen.<Service>.<Version>.<Resource>`.

### Making a payment

```elixir
alias Adyen.Checkout.V71

request = %V71.CreateCheckoutSessionRequest{
  merchantAccount: "YourMerchantAccount",
  amount: %V71.Amount{value: 1000, currency: "EUR"},
  reference: "order-123",
  returnUrl: "https://your-site.com/return"
}

case V71.Payments.post_sessions(request) do
  {:ok, session} -> session.sessionData
  {:error, error} -> IO.puts(error)
end
```

### Per-request options

All operation functions accept an `opts` keyword list as the last argument:

```elixir
V71.Payments.post_sessions(request,
  api_key: "req-specific-key",
  environment: :live,
  live_prefix: "your-prefix"
)
```

### Error handling

All errors return `{:error, Adyen.Error.t()}`:

```elixir
case V71.Payments.post_sessions(request) do
  {:ok, response} ->
    # handle success

  {:error, %Adyen.Error{status: 401}} ->
    # authentication failed

  {:error, %Adyen.Error{status: 422, invalid_fields: fields}} ->
    # validation error — inspect fields for details

  {:error, %Adyen.Error{} = error} ->
    IO.puts(error)  # "HTTP 400 - (validation) - 14_012 - ..."
end
```

`Adyen.Error` fields:

| Field | Description |
|---|---|
| `:status` | HTTP status code |
| `:error_code` | Adyen error code (e.g. `"14_012"`) |
| `:message` | Human-readable message |
| `:psp_reference` | Adyen request reference |
| `:error_type` | Error category |
| `:invalid_fields` | List of `{name, message}` validation errors |

---

## Available services

Over 120 services across multiple versions are bundled. A few examples:

| Service | Versions |
|---|---|
| CheckoutService | v49 – v71 |
| PaymentService | multiple |
| PayoutService | multiple |
| AccountService | v3 – v6 |
| TransferService | multiple |
| ManagementService | multiple |
| BalancePlatform | multiple |
| LegalEntityService | multiple |

List all available services:

```elixir
Adyen.Generator.get_all_services()
```

Or from the CLI:

```sh
mix adyen.gen  # with no config, prints all available services
```

---

## License

MIT
