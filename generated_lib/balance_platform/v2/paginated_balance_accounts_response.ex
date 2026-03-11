defmodule Adyen.BalancePlatform.V2.PaginatedBalanceAccountsResponse do
  @moduledoc """
  Provides struct and type for a PaginatedBalanceAccountsResponse
  """

  @type t :: %__MODULE__{
          balanceAccounts: [Adyen.BalancePlatform.V2.BalanceAccountBase.t()],
          hasNext: boolean,
          hasPrevious: boolean
        }

  defstruct [:balanceAccounts, :hasNext, :hasPrevious]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccounts: [{Adyen.BalancePlatform.V2.BalanceAccountBase, :t}],
      hasNext: :boolean,
      hasPrevious: :boolean
    ]
  end
end
