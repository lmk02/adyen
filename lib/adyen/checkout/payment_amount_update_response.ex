defmodule Adyen.Checkout.PaymentAmountUpdateResponse do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateResponse
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.Split

  @type t :: %__MODULE__{
          amount: Amount.t(),
          industryUsage: String.t() | nil,
          lineItems: [LineItem.t()] | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t(),
          splits: [Split.t()] | nil,
          status: String.t()
        }

  defstruct [
    :amount,
    :industryUsage,
    :lineItems,
    :merchantAccount,
    :paymentPspReference,
    :pspReference,
    :reference,
    :splits,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{LineItem, :t}],
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{Split, :t}],
      status: {:const, "received"}
    ]
  end
end
