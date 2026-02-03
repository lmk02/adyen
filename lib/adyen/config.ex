defmodule Adyen.Config do
  @moduledoc """
  Configuration handling for the Adyen library.

  Configuration can be set in your application config:

      config :adyen,
        api_key: "your_api_key",
        environment: :test  # or :live

  Or via environment variables:
  - `ADYEN_API_KEY` - Your Adyen API key
  - `ADYEN_ENVIRONMENT` - "test" or "live"

  All configuration can be overridden on a per-request basis by passing options
  to API functions.
  """

  @type environment :: :test | :live

  # Service-specific base URLs
  @service_urls %{
    checkout: %{
      test: "https://checkout-test.adyen.com/v71",
      live: "https://{prefix}-checkout-live.adyenpayments.com/checkout/v71"
    },
    transfers: %{
      test: "https://balanceplatform-api-test.adyen.com/btl/v4",
      live: "https://balanceplatform-api-live.adyen.com/btl/v4"
    },
    balance_platform: %{
      test: "https://balanceplatform-api-test.adyen.com/bcl/v2",
      live: "https://balanceplatform-api-live.adyen.com/bcl/v2"
    }
  }

  @doc """
  Get the API key from options or application config.

  Prioritizes service-specific keys (e.g. :checkout_api_key) over generic :api_key.
  """
  @spec api_key(keyword()) :: String.t() | nil
  def api_key(opts \\ []) do
    service = Keyword.get(opts, :service)

    specific_key =
      case service do
        :checkout -> get_key(:checkout_api_key, "ADYEN_CHECKOUT_API_KEY", opts)
        :transfers -> get_key(:transfers_api_key, "ADYEN_TRANSFERS_API_KEY", opts)
        :balance_platform -> get_key(:balance_platform_api_key, "ADYEN_BALANCE_PLATFORM_API_KEY", opts)
        _ -> nil
      end

    specific_key || get_key(:api_key, "ADYEN_API_KEY", opts)
  end

  defp get_key(key_atom, env_var, opts) do
    Keyword.get(opts, key_atom) ||
      Application.get_env(:adyen, key_atom) ||
      System.get_env(env_var)
  end

  @doc """
  Get the current environment (:test or :live).
  """
  @spec environment(keyword()) :: environment()
  def environment(opts \\ []) do
    Keyword.get_lazy(opts, :environment, fn ->
      env = Application.get_env(:adyen, :environment) || System.get_env("ADYEN_ENVIRONMENT")

      case env do
        :live -> :live
        "live" -> :live
        _ -> :test
      end
    end)
  end

  @doc """
  Get the base URL for API requests.

  ## Options

  - `:environment` - Override the environment (:test or :live)
  - `:service` - The service type (:checkout, :transfers, :balance_platform)
  - `:live_url_prefix` - For live checkout, the unique prefix for your company

  """
  @spec base_url(keyword()) :: String.t()
  def base_url(opts \\ []) do
    env = environment(opts)
    service = Keyword.get(opts, :service, :checkout)
    prefix = Keyword.get(opts, :live_url_prefix)

    case {env, service, prefix} do
      {:live, :checkout, nil} ->
        raise ArgumentError,
              "live_url_prefix is required for live checkout API. " <>
                "Get this from your Adyen Customer Area under Developers > API URLs"

      {:live, :checkout, prefix} ->
        "https://#{prefix}-checkout-live.adyenpayments.com/checkout/v71"

      {env, service, _} when is_map_key(@service_urls, service) ->
        @service_urls[service][env]

      {:test, _, _} ->
        "https://checkout-test.adyen.com/v71"

      {:live, _, _} ->
        raise ArgumentError, "Unknown service: #{service}"
    end
  end
end
