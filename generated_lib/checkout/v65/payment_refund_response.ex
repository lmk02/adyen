defmodule Adyen.Checkout.V65.PaymentRefundResponse do
  @moduledoc """
  Provides struct and type for a PaymentRefundResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V65.Amount.t(),
          capturePspReference: String.t() | nil,
          lineItems: [Adyen.Checkout.V65.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V65.Split.t()] | nil,
          status: String.t(),
          store: String.t() | nil
        }

  defstruct [
    :amount,
    :capturePspReference,
    :lineItems,
    :merchantAccount,
    :merchantRefundReason,
    :paymentPspReference,
    :pspReference,
    :reference,
    :splits,
    :status,
    :store
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V65.Amount, :t},
      capturePspReference: :string,
      lineItems: [{Adyen.Checkout.V65.LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason:
        {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{Adyen.Checkout.V65.Split, :t}],
      status: {:const, "received"},
      store: :string
    ]
  end
end
