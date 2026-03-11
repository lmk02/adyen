defmodule Adyen.Checkout.V41.CreateOrderRequest do
  @moduledoc """
  Provides struct and type for a CreateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V41.Amount.t(),
          expiresAt: String.t() | nil,
          merchantAccount: String.t(),
          reference: String.t()
        }

  defstruct [:amount, :expiresAt, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V41.Amount, :t},
      expiresAt: :string,
      merchantAccount: :string,
      reference: :string
    ]
  end
end
