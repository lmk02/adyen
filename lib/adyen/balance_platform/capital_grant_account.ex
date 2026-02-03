defmodule Adyen.BalancePlatform.CapitalGrantAccount do
  @moduledoc """
  Provides struct and type for a CapitalGrantAccount
  """

  alias Adyen.BalancePlatform.CapitalBalance
  alias Adyen.BalancePlatform.GrantLimit

  @type t :: %__MODULE__{
          balances: [CapitalBalance.t()] | nil,
          fundingBalanceAccountId: String.t() | nil,
          id: String.t() | nil,
          limits: [GrantLimit.t()] | nil
        }

  defstruct [:balances, :fundingBalanceAccountId, :id, :limits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: [{CapitalBalance, :t}],
      fundingBalanceAccountId: :string,
      id: :string,
      limits: [{GrantLimit, :t}]
    ]
  end
end
