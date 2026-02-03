defmodule Adyen.Checkout.PaymentRefundRequest do
  @moduledoc """
  Provides struct and type for a PaymentRefundRequest
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.EnhancedSchemeData
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.Split

  @type t :: %__MODULE__{
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          capturePspReference: String.t() | nil,
          enhancedSchemeData: EnhancedSchemeData.t() | nil,
          lineItems: [LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          reference: String.t() | nil,
          splits: [Split.t()] | nil,
          store: String.t() | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :capturePspReference,
    :enhancedSchemeData,
    :lineItems,
    :merchantAccount,
    :merchantRefundReason,
    :reference,
    :splits,
    :store
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      applicationInfo: {ApplicationInfo, :t},
      capturePspReference: :string,
      enhancedSchemeData: {EnhancedSchemeData, :t},
      lineItems: [{LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason: {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      reference: :string,
      splits: [{Split, :t}],
      store: :string
    ]
  end
end
