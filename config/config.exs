import Config

# Adyen API Configuration
# Set these in your config/runtime.exs or via environment variables
config :adyen,
  # API key from Adyen Customer Area
  # Can be generic :api_key or service-specific:
  # :checkout_api_key, :transfers_api_key, :balance_platform_api_key
  api_key: System.get_env("ADYEN_API_KEY"),
  # Environment: :test or :live
  environment: :test

# oapi_generator configuration profiles
# Each profile generates into a separate namespace

# Balance Platform API profile
# Run: mix api.gen adyen_balance_platform priv/specs/BalancePlatformService-v2.json
config :oapi_generator,
  adyen_balance_platform: [
    renderer: Adyen.Renderer,
    output: [
      base_module: Adyen.BalancePlatform,
      location: "lib/adyen/balance_platform",
      default_client: Adyen.Client
    ]
  ]

# Checkout API profile
# Run: mix api.gen adyen_checkout priv/specs/CheckoutService-v71.json
config :oapi_generator,
  adyen_checkout: [
    renderer: Adyen.Renderer,
    output: [
      base_module: Adyen.Checkout,
      location: "lib/adyen/checkout",
      default_client: Adyen.Client
    ]
  ]

# Transfers API profile
# Run: mix api.gen adyen_transfers priv/specs/TransferService-v4.json
config :oapi_generator,
  adyen_transfers: [
    renderer: Adyen.Renderer,
    output: [
      base_module: Adyen.Transfers,
      location: "lib/adyen/transfers",
      default_client: Adyen.Client
    ]
  ]
