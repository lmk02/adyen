defmodule Adyen.Funds.DetailBalance do
  @moduledoc """
  Provides struct and type for a DetailBalance
  """

  @type t :: %__MODULE__{
          balance: [Adyen.Funds.Amount.t()] | nil,
          onHoldBalance: [Adyen.Funds.Amount.t()] | nil,
          pendingBalance: [Adyen.Funds.Amount.t()] | nil
        }

  defstruct [:balance, :onHoldBalance, :pendingBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balance: [{Adyen.Funds.Amount, :t}],
      onHoldBalance: [{Adyen.Funds.Amount, :t}],
      pendingBalance: [{Adyen.Funds.Amount, :t}]
    ]
  end
end
