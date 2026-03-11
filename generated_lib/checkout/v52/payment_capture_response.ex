defmodule Adyen.Checkout.V52.PaymentCaptureResponse do
  @moduledoc """
  Provides struct and type for a PaymentCaptureResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V52.Amount.t(),
          lineItems: [Adyen.Checkout.V52.LineItem.t()] | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V52.Split.t()] | nil,
          status: String.t()
        }

  defstruct [
    :amount,
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
      amount: {Adyen.Checkout.V52.Amount, :t},
      lineItems: [{Adyen.Checkout.V52.LineItem, :t}],
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{Adyen.Checkout.V52.Split, :t}],
      status: {:const, "received"}
    ]
  end
end
