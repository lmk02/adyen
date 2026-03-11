defmodule Adyen.Checkout.V40.PaymentAmountUpdateResponse do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V40.Amount.t(),
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reason: String.t() | nil,
          reference: String.t(),
          splits: [Adyen.Checkout.V40.Split.t()] | nil,
          status: String.t()
        }

  defstruct [
    :amount,
    :merchantAccount,
    :paymentPspReference,
    :pspReference,
    :reason,
    :reference,
    :splits,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V40.Amount, :t},
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reason: {:enum, ["delayedCharge", "noShow"]},
      reference: :string,
      splits: [{Adyen.Checkout.V40.Split, :t}],
      status: {:const, "received"}
    ]
  end
end
