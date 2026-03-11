defmodule Adyen.Fund.V5.DetailBalance do
  @moduledoc """
  Provides struct and type for a DetailBalance
  """

  @type t :: %__MODULE__{
          balance: [Adyen.Fund.V5.Amount.t()] | nil,
          onHoldBalance: [Adyen.Fund.V5.Amount.t()] | nil,
          pendingBalance: [Adyen.Fund.V5.Amount.t()] | nil
        }

  defstruct [:balance, :onHoldBalance, :pendingBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balance: [{Adyen.Fund.V5.Amount, :t}],
      onHoldBalance: [{Adyen.Fund.V5.Amount, :t}],
      pendingBalance: [{Adyen.Fund.V5.Amount, :t}]
    ]
  end
end
