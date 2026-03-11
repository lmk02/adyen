defmodule Adyen.Fund.V3.PayoutAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a PayoutAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          accountHolderCode: String.t(),
          amount: Adyen.Fund.V3.Amount.t() | nil,
          bankAccountUUID: String.t() | nil,
          description: String.t() | nil,
          merchantReference: String.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :amount,
    :bankAccountUUID,
    :description,
    :merchantReference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountHolderCode: :string,
      amount: {Adyen.Fund.V3.Amount, :t},
      bankAccountUUID: :string,
      description: :string,
      merchantReference: :string
    ]
  end
end
