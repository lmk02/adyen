import Config

if Mix.env() == :test do
  config :adyen,
    services: ["AccountService:v6"],
    environment: :test
end
