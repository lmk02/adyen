defmodule Adyen.Checkout.V71.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V71.Amount.t(),
          applicationInfo: Adyen.Checkout.V71.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.V71.EnhancedSchemeData.t() | nil,
          lineItems: [Adyen.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          platformChargebackLogic: Adyen.Checkout.V71.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V71.Split.t()] | nil,
          subMerchants: [Adyen.Checkout.V71.SubMerchantInfo.t()] | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :enhancedSchemeData,
    :lineItems,
    :merchantAccount,
    :platformChargebackLogic,
    :reference,
    :splits,
    :subMerchants
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V71.Amount, :t},
      applicationInfo: {Adyen.Checkout.V71.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.V71.EnhancedSchemeData, :t},
      lineItems: [{Adyen.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      platformChargebackLogic: {Adyen.Checkout.V71.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Checkout.V71.Split, :t}],
      subMerchants: [{Adyen.Checkout.V71.SubMerchantInfo, :t}]
    ]
  end
end
