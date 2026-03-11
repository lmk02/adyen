defmodule Adyen.Funds.DebitAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a DebitAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          amount: Adyen.Funds.Amount.t(),
          bankAccountUUID: String.t(),
          description: String.t() | nil,
          merchantAccount: String.t(),
          splits: [Adyen.Funds.Split.t()]
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
      amount: {Adyen.Funds.Amount, :t},
      bankAccountUUID: :string,
      description: :string,
      merchantAccount: :string,
      splits: [{Adyen.Funds.Split, :t}]
    ]
  end
end
