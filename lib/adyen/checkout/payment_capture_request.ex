defmodule Adyen.Checkout.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.Amount.t(),
          applicationInfo: Adyen.Checkout.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.EnhancedSchemeData.t() | nil,
          lineItems: [Adyen.Checkout.LineItem.t()] | nil,
          merchantAccount: String.t(),
          platformChargebackLogic: Adyen.Checkout.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.Split.t()] | nil,
          subMerchants: [Adyen.Checkout.SubMerchantInfo.t()] | nil
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
      amount: {Adyen.Checkout.Amount, :t},
      applicationInfo: {Adyen.Checkout.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.EnhancedSchemeData, :t},
      lineItems: [{Adyen.Checkout.LineItem, :t}],
      merchantAccount: :string,
      platformChargebackLogic: {Adyen.Checkout.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Checkout.Split, :t}],
      subMerchants: [{Adyen.Checkout.SubMerchantInfo, :t}]
    ]
  end
end
