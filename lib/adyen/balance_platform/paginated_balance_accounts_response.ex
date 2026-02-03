defmodule Adyen.BalancePlatform.PaginatedBalanceAccountsResponse do
  @moduledoc """
  Provides struct and type for a PaginatedBalanceAccountsResponse
  """

  alias Adyen.BalancePlatform.BalanceAccountBase

  @type t :: %__MODULE__{
          balanceAccounts: [BalanceAccountBase.t()],
          hasNext: boolean,
          hasPrevious: boolean
        }

  defstruct [:balanceAccounts, :hasNext, :hasPrevious]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccounts: [{BalanceAccountBase, :t}],
      hasNext: :boolean,
      hasPrevious: :boolean
    ]
  end
end
