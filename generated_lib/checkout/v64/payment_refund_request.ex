defmodule Adyen.Checkout.V64.PaymentRefundRequest do
  @moduledoc """
  Provides struct and type for a PaymentRefundRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V64.Amount.t(),
          applicationInfo: Adyen.Checkout.V64.ApplicationInfo.t() | nil,
          capturePspReference: String.t() | nil,
          lineItems: [Adyen.Checkout.V64.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V64.Split.t()] | nil,
          store: String.t() | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :capturePspReference,
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
      amount: {Adyen.Checkout.V64.Amount, :t},
      applicationInfo: {Adyen.Checkout.V64.ApplicationInfo, :t},
      capturePspReference: :string,
      lineItems: [{Adyen.Checkout.V64.LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason:
        {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      reference: :string,
      splits: [{Adyen.Checkout.V64.Split, :t}],
      store: :string
    ]
  end
end
