defmodule Adyen.Checkout.CheckoutOrderResponse do
  @moduledoc """
  Provides struct and type for a CheckoutOrderResponse
  """

  alias Adyen.Checkout.Amount

  @type t :: %__MODULE__{
          amount: Amount.t() | nil,
          expiresAt: String.t() | nil,
          orderData: String.t() | nil,
          pspReference: String.t(),
          reference: String.t() | nil,
          remainingAmount: Amount.t() | nil
        }

  defstruct [:amount, :expiresAt, :orderData, :pspReference, :reference, :remainingAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      expiresAt: :string,
      orderData: :string,
      pspReference: :string,
      reference: :string,
      remainingAmount: {Amount, :t}
    ]
  end
end
