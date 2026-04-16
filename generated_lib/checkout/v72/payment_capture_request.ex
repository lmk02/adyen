defmodule Adyen.Checkout.V72.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V72.Amount.t(),
          applicationInfo: Adyen.Checkout.V72.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.V72.EnhancedSchemeData.t() | nil,
          lineItems: [Adyen.Checkout.V72.LineItem.t()] | nil,
          merchantAccount: String.t(),
          platformChargebackLogic: Adyen.Checkout.V72.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V72.Split.t()] | nil,
          subMerchants: [Adyen.Checkout.V72.SubMerchantInfo.t()] | nil
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
      amount: {Adyen.Checkout.V72.Amount, :t},
      applicationInfo: {Adyen.Checkout.V72.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.V72.EnhancedSchemeData, :t},
      lineItems: [{Adyen.Checkout.V72.LineItem, :t}],
      merchantAccount: :string,
      platformChargebackLogic: {Adyen.Checkout.V72.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Checkout.V72.Split, :t}],
      subMerchants: [{Adyen.Checkout.V72.SubMerchantInfo, :t}]
    ]
  end
end
