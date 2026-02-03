defmodule Adyen.Checkout.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.EnhancedSchemeData
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.PlatformChargebackLogic
  alias Adyen.Checkout.Split
  alias Adyen.Checkout.SubMerchantInfo

  @type t :: %__MODULE__{
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          enhancedSchemeData: EnhancedSchemeData.t() | nil,
          lineItems: [LineItem.t()] | nil,
          merchantAccount: String.t(),
          platformChargebackLogic: PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Split.t()] | nil,
          subMerchants: [SubMerchantInfo.t()] | nil
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
      amount: {Amount, :t},
      applicationInfo: {ApplicationInfo, :t},
      enhancedSchemeData: {EnhancedSchemeData, :t},
      lineItems: [{LineItem, :t}],
      merchantAccount: :string,
      platformChargebackLogic: {PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Split, :t}],
      subMerchants: [{SubMerchantInfo, :t}]
    ]
  end
end
