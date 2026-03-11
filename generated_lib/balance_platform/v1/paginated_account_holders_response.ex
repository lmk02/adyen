defmodule Adyen.BalancePlatform.V1.PaginatedAccountHoldersResponse do
  @moduledoc """
  Provides struct and type for a PaginatedAccountHoldersResponse
  """

  @type t :: %__MODULE__{
          accountHolders: [Adyen.BalancePlatform.V1.AccountHolder.t()],
          hasNext: boolean,
          hasPrevious: boolean
        }

  defstruct [:accountHolders, :hasNext, :hasPrevious]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolders: [{Adyen.BalancePlatform.V1.AccountHolder, :t}],
      hasNext: :boolean,
      hasPrevious: :boolean
    ]
  end
end
