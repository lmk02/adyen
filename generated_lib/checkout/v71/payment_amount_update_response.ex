defmodule Adyen.Checkout.V71.PaymentAmountUpdateResponse do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V71.Amount.t(),
          industryUsage: String.t() | nil,
          lineItems: [Adyen.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t(),
          splits: [Adyen.Checkout.V71.Split.t()] | nil,
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
      amount: {Adyen.Checkout.V71.Amount, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{Adyen.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{Adyen.Checkout.V71.Split, :t}],
      status: {:const, "received"}
    ]
  end
end
