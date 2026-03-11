defmodule Adyen.Checkout.V70.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: Adyen.Checkout.V70.CommonField.t() | nil,
          adyenPaymentSource: Adyen.Checkout.V70.CommonField.t() | nil,
          externalPlatform: Adyen.Checkout.V70.ExternalPlatform.t() | nil,
          merchantApplication: Adyen.Checkout.V70.CommonField.t() | nil,
          merchantDevice: Adyen.Checkout.V70.MerchantDevice.t() | nil,
          shopperInteractionDevice: Adyen.Checkout.V70.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {Adyen.Checkout.V70.CommonField, :t},
      adyenPaymentSource: {Adyen.Checkout.V70.CommonField, :t},
      externalPlatform: {Adyen.Checkout.V70.ExternalPlatform, :t},
      merchantApplication: {Adyen.Checkout.V70.CommonField, :t},
      merchantDevice: {Adyen.Checkout.V70.MerchantDevice, :t},
      shopperInteractionDevice: {Adyen.Checkout.V70.ShopperInteractionDevice, :t}
    ]
  end
end
