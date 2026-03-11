defmodule Adyen.Checkout.V65.StandalonePaymentCancelResponse do
  @moduledoc """
  Provides struct and type for a StandalonePaymentCancelResponse
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          paymentReference: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          status: String.t()
        }

  defstruct [:merchantAccount, :paymentReference, :pspReference, :reference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      paymentReference: :string,
      pspReference: :string,
      reference: :string,
      status: {:const, "received"}
    ]
  end
end
