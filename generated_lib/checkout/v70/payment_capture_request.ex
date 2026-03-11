defmodule Adyen.Checkout.V70.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V70.Amount.t(),
          applicationInfo: Adyen.Checkout.V70.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.V70.EnhancedSchemeData.t() | nil,
          lineItems: [Adyen.Checkout.V70.LineItem.t()] | nil,
          merchantAccount: String.t(),
          platformChargebackLogic: Adyen.Checkout.V70.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V70.Split.t()] | nil,
          subMerchants: [Adyen.Checkout.V70.SubMerchantInfo.t()] | nil
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
      amount: {Adyen.Checkout.V70.Amount, :t},
      applicationInfo: {Adyen.Checkout.V70.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.V70.EnhancedSchemeData, :t},
      lineItems: [{Adyen.Checkout.V70.LineItem, :t}],
      merchantAccount: :string,
      platformChargebackLogic: {Adyen.Checkout.V70.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Checkout.V70.Split, :t}],
      subMerchants: [{Adyen.Checkout.V70.SubMerchantInfo, :t}]
    ]
  end
end
