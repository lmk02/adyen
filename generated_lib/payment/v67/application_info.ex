defmodule Adyen.Payment.V67.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: Adyen.Payment.V67.CommonField.t() | nil,
          adyenPaymentSource: Adyen.Payment.V67.CommonField.t() | nil,
          externalPlatform: Adyen.Payment.V67.ExternalPlatform.t() | nil,
          merchantApplication: Adyen.Payment.V67.CommonField.t() | nil,
          merchantDevice: Adyen.Payment.V67.MerchantDevice.t() | nil,
          shopperInteractionDevice: Adyen.Payment.V67.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {Adyen.Payment.V67.CommonField, :t},
      adyenPaymentSource: {Adyen.Payment.V67.CommonField, :t},
      externalPlatform: {Adyen.Payment.V67.ExternalPlatform, :t},
      merchantApplication: {Adyen.Payment.V67.CommonField, :t},
      merchantDevice: {Adyen.Payment.V67.MerchantDevice, :t},
      shopperInteractionDevice: {Adyen.Payment.V67.ShopperInteractionDevice, :t}
    ]
  end
end
