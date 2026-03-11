defmodule Adyen.StoredValue.V46.StoredValueBalanceCheckRequest do
  @moduledoc """
  Provides struct and type for a StoredValueBalanceCheckRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.StoredValue.V46.Amount.t() | nil,
          merchantAccount: String.t(),
          paymentMethod: map,
          recurringDetailReference: String.t() | nil,
          reference: String.t(),
          shopperInteraction: String.t() | nil,
          shopperReference: String.t() | nil,
          store: String.t() | nil
        }

  defstruct [
    :amount,
    :merchantAccount,
    :paymentMethod,
    :recurringDetailReference,
    :reference,
    :shopperInteraction,
    :shopperReference,
    :store
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.StoredValue.V46.Amount, :t},
      merchantAccount: :string,
      paymentMethod: :map,
      recurringDetailReference: :string,
      reference: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperReference: :string,
      store: :string
    ]
  end
end
