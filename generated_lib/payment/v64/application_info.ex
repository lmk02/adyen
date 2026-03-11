defmodule Adyen.Payment.V64.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: Adyen.Payment.V64.CommonField.t() | nil,
          adyenPaymentSource: Adyen.Payment.V64.CommonField.t() | nil,
          externalPlatform: Adyen.Payment.V64.ExternalPlatform.t() | nil,
          merchantApplication: Adyen.Payment.V64.CommonField.t() | nil,
          merchantDevice: Adyen.Payment.V64.MerchantDevice.t() | nil,
          shopperInteractionDevice: Adyen.Payment.V64.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {Adyen.Payment.V64.CommonField, :t},
      adyenPaymentSource: {Adyen.Payment.V64.CommonField, :t},
      externalPlatform: {Adyen.Payment.V64.ExternalPlatform, :t},
      merchantApplication: {Adyen.Payment.V64.CommonField, :t},
      merchantDevice: {Adyen.Payment.V64.MerchantDevice, :t},
      shopperInteractionDevice: {Adyen.Payment.V64.ShopperInteractionDevice, :t}
    ]
  end
end
