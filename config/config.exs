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

if File.exists?("config/oapi_generator_profiles.exs") do
  import_config "oapi_generator_profiles.exs"
end
