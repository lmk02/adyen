defmodule Adyen.Fund.V5.DebitAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a DebitAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          amount: Adyen.Fund.V5.Amount.t(),
          bankAccountUUID: String.t(),
          description: String.t() | nil,
          merchantAccount: String.t(),
          splits: [Adyen.Fund.V5.Split.t()]
        }

  defstruct [
    :accountHolderCode,
    :amount,
    :bankAccountUUID,
    :description,
    :merchantAccount,
    :splits
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      amount: {Adyen.Fund.V5.Amount, :t},
      bankAccountUUID: :string,
      description: :string,
      merchantAccount: :string,
      splits: [{Adyen.Fund.V5.Split, :t}]
    ]
  end
end
