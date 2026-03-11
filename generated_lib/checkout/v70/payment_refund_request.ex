defmodule Adyen.Checkout.V70.PaymentRefundRequest do
  @moduledoc """
  Provides struct and type for a PaymentRefundRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V70.Amount.t(),
          applicationInfo: Adyen.Checkout.V70.ApplicationInfo.t() | nil,
          capturePspReference: String.t() | nil,
          enhancedSchemeData: Adyen.Checkout.V70.EnhancedSchemeData.t() | nil,
          lineItems: [Adyen.Checkout.V70.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V70.Split.t()] | nil,
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
      amount: {Adyen.Checkout.V70.Amount, :t},
      applicationInfo: {Adyen.Checkout.V70.ApplicationInfo, :t},
      capturePspReference: :string,
      enhancedSchemeData: {Adyen.Checkout.V70.EnhancedSchemeData, :t},
      lineItems: [{Adyen.Checkout.V70.LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason:
        {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      reference: :string,
      splits: [{Adyen.Checkout.V70.Split, :t}],
      store: :string
    ]
  end
end
