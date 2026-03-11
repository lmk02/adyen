defmodule Adyen.Checkout.V70.Payment do
  @moduledoc """
  Provides struct and type for a Payment
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V70.Amount.t() | nil,
          paymentMethod: Adyen.Checkout.V70.ResponsePaymentMethod.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:amount, :paymentMethod, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V70.Amount, :t},
      paymentMethod: {Adyen.Checkout.V70.ResponsePaymentMethod, :t},
      pspReference: :string,
      resultCode: {:enum, ["Authorised", "Received", "Pending"]}
    ]
  end
end
