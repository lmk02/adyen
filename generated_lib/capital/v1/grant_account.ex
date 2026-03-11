defmodule Adyen.Capital.V1.GrantAccount do
  @moduledoc """
  Provides struct and type for a GrantAccount
  """

  @type t :: %__MODULE__{
          balances: [Adyen.Capital.V1.Balance.t()] | nil,
          fundingBalanceAccountId: String.t() | nil,
          id: String.t() | nil,
          limits: [Adyen.Capital.V1.GrantLimit.t()] | nil
        }

  defstruct [:balances, :fundingBalanceAccountId, :id, :limits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: [{Adyen.Capital.V1.Balance, :t}],
      fundingBalanceAccountId: :string,
      id: :string,
      limits: [{Adyen.Capital.V1.GrantLimit, :t}]
    ]
  end
end
