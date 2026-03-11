defmodule Adyen.Payments.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: Adyen.Payments.CommonField.t() | nil,
          adyenPaymentSource: Adyen.Payments.CommonField.t() | nil,
          externalPlatform: Adyen.Payments.ExternalPlatform.t() | nil,
          merchantApplication: Adyen.Payments.CommonField.t() | nil,
          merchantDevice: Adyen.Payments.MerchantDevice.t() | nil,
          shopperInteractionDevice: Adyen.Payments.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {Adyen.Payments.CommonField, :t},
      adyenPaymentSource: {Adyen.Payments.CommonField, :t},
      externalPlatform: {Adyen.Payments.ExternalPlatform, :t},
      merchantApplication: {Adyen.Payments.CommonField, :t},
      merchantDevice: {Adyen.Payments.MerchantDevice, :t},
      shopperInteractionDevice: {Adyen.Payments.ShopperInteractionDevice, :t}
    ]
  end
end
