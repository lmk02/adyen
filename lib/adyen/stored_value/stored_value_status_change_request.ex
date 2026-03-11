defmodule Adyen.StoredValue.StoredValueStatusChangeRequest do
  @moduledoc """
  Provides struct and type for a StoredValueStatusChangeRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.StoredValue.Amount.t() | nil,
          merchantAccount: String.t(),
          paymentMethod: map,
          recurringDetailReference: String.t() | nil,
          reference: String.t(),
          shopperInteraction: String.t() | nil,
          shopperReference: String.t() | nil,
          status: String.t(),
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
    :status,
    :store
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.StoredValue.Amount, :t},
      merchantAccount: :string,
      paymentMethod: :map,
      recurringDetailReference: :string,
      reference: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperReference: :string,
      status: {:enum, ["active", "inactive"]},
      store: :string
    ]
  end
end
