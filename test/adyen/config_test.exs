defmodule Adyen.ConfigTest do
  # Not async because we modifying app env
  use ExUnit.Case, async: false

  alias Adyen.Config

  setup do
    # Reset config
    original_config = Application.get_all_env(:adyen)

    on_exit(fn ->
      # Clear existing env before reset
      for {k, _} <- Application.get_all_env(:adyen), do: Application.delete_env(:adyen, k)
      Application.put_all_env(adyen: original_config)
    end)

    :ok
  end

  test "resolves service-specific api key from opts primarily" do
    opts = [api_key: "OPTS_KEY"]
    assert Config.api_key("CheckoutService", opts) == "OPTS_KEY"
  end

  test "resolves service-specific api key from config" do
    Application.put_env(:adyen, :CheckoutService, api_key: "CONFIG_CHECKOUT")
    Application.put_env(:adyen, :api_key, "CONFIG_GENERIC")

    assert Config.api_key("CheckoutService") == "CONFIG_CHECKOUT"
    assert Config.api_key("TransferService") == "CONFIG_GENERIC"
  end

  test "resolves generic api key as fallback" do
    Application.put_env(:adyen, :api_key, "GENERIC_ONLY")
    assert Config.api_key("BalancePlatformService") == "GENERIC_ONLY"
  end

  test "fetches base URL properly built from JSON specs" do
    assert Config.base_url("CheckoutService", "v71") == "https://checkout-test.adyen.com/v71"
  end

  test "fetches latest version properly" do
    assert Config.latest_version("CheckoutService")
  end

  test "replaces test with live in base URL for live environment" do
    # PaymentService URL from spec has "pal-test.adyen.com"
    assert Config.base_url("PaymentService", "v68", environment: :live) ==
             "https://pal-live.adyen.com/pal/servlet/Payment/v68"
  end
end
