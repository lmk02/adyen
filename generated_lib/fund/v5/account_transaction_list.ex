defmodule Adyen.Fund.V5.AccountTransactionList do
  @moduledoc """
  Provides struct and type for a AccountTransactionList
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          hasNextPage: boolean | nil,
          transactions: [Adyen.Fund.V5.Transaction.t()] | nil
        }

  defstruct [:accountCode, :hasNextPage, :transactions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, hasNextPage: :boolean, transactions: [{Adyen.Fund.V5.Transaction, :t}]]
  end
end
