defmodule Adyen.Checkout.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: Adyen.Checkout.CommonField.t() | nil,
          adyenPaymentSource: Adyen.Checkout.CommonField.t() | nil,
          externalPlatform: Adyen.Checkout.ExternalPlatform.t() | nil,
          merchantApplication: Adyen.Checkout.CommonField.t() | nil,
          merchantDevice: Adyen.Checkout.MerchantDevice.t() | nil,
          shopperInteractionDevice: Adyen.Checkout.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {Adyen.Checkout.CommonField, :t},
      adyenPaymentSource: {Adyen.Checkout.CommonField, :t},
      externalPlatform: {Adyen.Checkout.ExternalPlatform, :t},
      merchantApplication: {Adyen.Checkout.CommonField, :t},
      merchantDevice: {Adyen.Checkout.MerchantDevice, :t},
      shopperInteractionDevice: {Adyen.Checkout.ShopperInteractionDevice, :t}
    ]
  end
end
