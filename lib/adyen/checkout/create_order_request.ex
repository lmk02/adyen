defmodule Adyen.Checkout.CreateOrderRequest do
  @moduledoc """
  Provides struct and type for a CreateOrderRequest
  """

  alias Adyen.Checkout.Amount

  @type t :: %__MODULE__{
          amount: Amount.t(),
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
      amount: {Amount, :t},
      expiresAt: :string,
      merchantAccount: :string,
      reference: :string
    ]
  end
end
