defmodule Adyen.Checkout.V71.CheckoutOrderResponse do
  @moduledoc """
  Provides struct and type for a CheckoutOrderResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V71.Amount.t() | nil,
          expiresAt: String.t() | nil,
          orderData: String.t() | nil,
          pspReference: String.t(),
          reference: String.t() | nil,
          remainingAmount: Adyen.Checkout.V71.Amount.t() | nil
        }

  defstruct [:amount, :expiresAt, :orderData, :pspReference, :reference, :remainingAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V71.Amount, :t},
      expiresAt: :string,
      orderData: :string,
      pspReference: :string,
      reference: :string,
      remainingAmount: {Adyen.Checkout.V71.Amount, :t}
    ]
  end
end
