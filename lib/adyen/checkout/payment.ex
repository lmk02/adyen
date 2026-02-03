defmodule Adyen.Checkout.Payment do
  @moduledoc """
  Provides struct and type for a Payment
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ResponsePaymentMethod

  @type t :: %__MODULE__{
          amount: Amount.t() | nil,
          paymentMethod: ResponsePaymentMethod.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:amount, :paymentMethod, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      paymentMethod: {ResponsePaymentMethod, :t},
      pspReference: :string,
      resultCode: {:enum, ["Authorised", "Received", "Pending"]}
    ]
  end
end
