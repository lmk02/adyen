defmodule Adyen.Checkout.V70.PaymentAmountUpdateResponse do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V70.Amount.t(),
          industryUsage: String.t() | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t(),
          splits: [Adyen.Checkout.V70.Split.t()] | nil,
          status: String.t()
        }

  defstruct [
    :amount,
    :industryUsage,
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
      amount: {Adyen.Checkout.V70.Amount, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{Adyen.Checkout.V70.Split, :t}],
      status: {:const, "received"}
    ]
  end
end
