defmodule Adyen.BalancePlatform.CapitalGrantAccount do
  @moduledoc """
  Provides struct and type for a CapitalGrantAccount
  """

  @type t :: %__MODULE__{
          balances: [Adyen.BalancePlatform.CapitalBalance.t()] | nil,
          fundingBalanceAccountId: String.t() | nil,
          id: String.t() | nil,
          limits: [Adyen.BalancePlatform.GrantLimit.t()] | nil
        }

  defstruct [:balances, :fundingBalanceAccountId, :id, :limits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: [{Adyen.BalancePlatform.CapitalBalance, :t}],
      fundingBalanceAccountId: :string,
      id: :string,
      limits: [{Adyen.BalancePlatform.GrantLimit, :t}]
    ]
  end
end
