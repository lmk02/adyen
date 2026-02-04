defmodule Adyen.Checkout.PaymentRefundRequest do
  @moduledoc """
  Provides struct and type for a PaymentRefundRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.Amount.t(),
          applicationInfo: Adyen.Checkout.ApplicationInfo.t() | nil,
          capturePspReference: String.t() | nil,
          enhancedSchemeData: Adyen.Checkout.EnhancedSchemeData.t() | nil,
          lineItems: [Adyen.Checkout.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.Split.t()] | nil,
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
      amount: {Adyen.Checkout.Amount, :t},
      applicationInfo: {Adyen.Checkout.ApplicationInfo, :t},
      capturePspReference: :string,
      enhancedSchemeData: {Adyen.Checkout.EnhancedSchemeData, :t},
      lineItems: [{Adyen.Checkout.LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason:
        {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      reference: :string,
      splits: [{Adyen.Checkout.Split, :t}],
      store: :string
    ]
  end
end
