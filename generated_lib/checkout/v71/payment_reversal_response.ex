defmodule Adyen.Checkout.V71.PaymentReversalResponse do
  @moduledoc """
  Provides struct and type for a PaymentReversalResponse
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          status: String.t()
        }

  defstruct [:merchantAccount, :paymentPspReference, :pspReference, :reference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      status: {:const, "received"}
    ]
  end
end
