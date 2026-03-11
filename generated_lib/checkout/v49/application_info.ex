defmodule Adyen.Checkout.V49.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: Adyen.Checkout.V49.CommonField.t() | nil,
          adyenPaymentSource: Adyen.Checkout.V49.CommonField.t() | nil,
          externalPlatform: Adyen.Checkout.V49.ExternalPlatform.t() | nil,
          merchantApplication: Adyen.Checkout.V49.CommonField.t() | nil,
          merchantDevice: Adyen.Checkout.V49.MerchantDevice.t() | nil,
          shopperInteractionDevice: Adyen.Checkout.V49.ShopperInteractionDevice.t() | nil
        }

  defstruct [
    :adyenLibrary,
    :adyenPaymentSource,
    :externalPlatform,
    :merchantApplication,
    :merchantDevice,
    :shopperInteractionDevice
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      adyenLibrary: {Adyen.Checkout.V49.CommonField, :t},
      adyenPaymentSource: {Adyen.Checkout.V49.CommonField, :t},
      externalPlatform: {Adyen.Checkout.V49.ExternalPlatform, :t},
      merchantApplication: {Adyen.Checkout.V49.CommonField, :t},
      merchantDevice: {Adyen.Checkout.V49.MerchantDevice, :t},
      shopperInteractionDevice: {Adyen.Checkout.V49.ShopperInteractionDevice, :t}
    ]
  end
end
