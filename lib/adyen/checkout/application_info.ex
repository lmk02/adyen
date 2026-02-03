defmodule Adyen.Checkout.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  alias Adyen.Checkout.CommonField
  alias Adyen.Checkout.ExternalPlatform
  alias Adyen.Checkout.MerchantDevice
  alias Adyen.Checkout.ShopperInteractionDevice

  @type t :: %__MODULE__{
          adyenLibrary: CommonField.t() | nil,
          adyenPaymentSource: CommonField.t() | nil,
          externalPlatform: ExternalPlatform.t() | nil,
          merchantApplication: CommonField.t() | nil,
          merchantDevice: MerchantDevice.t() | nil,
          shopperInteractionDevice: ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {CommonField, :t},
      adyenPaymentSource: {CommonField, :t},
      externalPlatform: {ExternalPlatform, :t},
      merchantApplication: {CommonField, :t},
      merchantDevice: {MerchantDevice, :t},
      shopperInteractionDevice: {ShopperInteractionDevice, :t}
    ]
  end
end
