defmodule Adyen.Capital.GrantAccount do
  @moduledoc """
  Provides struct and type for a GrantAccount
  """

  @type t :: %__MODULE__{
          balances: [Adyen.Capital.Balance.t()] | nil,
          fundingBalanceAccountId: String.t() | nil,
          id: String.t() | nil,
          limits: [Adyen.Capital.GrantLimit.t()] | nil
        }

  defstruct [:balances, :fundingBalanceAccountId, :id, :limits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: [{Adyen.Capital.Balance, :t}],
      fundingBalanceAccountId: :string,
      id: :string,
      limits: [{Adyen.Capital.GrantLimit, :t}]
    ]
  end
end
