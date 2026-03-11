defmodule Adyen.BalanceControl.MerchantBalance do
  @moduledoc """
  Provides struct and type for a MerchantBalance
  """

  @type t :: %__MODULE__{
          availableFund: Adyen.BalanceControl.Amount.t() | nil,
          deposit: Adyen.BalanceControl.Amount.t() | nil,
          merchantAccount: String.t() | nil,
          nextPayout: Adyen.BalanceControl.Amount.t() | nil,
          pendingBalance: Adyen.BalanceControl.Amount.t() | nil,
          reserve: Adyen.BalanceControl.Amount.t() | nil
        }

  defstruct [:availableFund, :deposit, :merchantAccount, :nextPayout, :pendingBalance, :reserve]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      availableFund: {Adyen.BalanceControl.Amount, :t},
      deposit: {Adyen.BalanceControl.Amount, :t},
      merchantAccount: :string,
      nextPayout: {Adyen.BalanceControl.Amount, :t},
      pendingBalance: {Adyen.BalanceControl.Amount, :t},
      reserve: {Adyen.BalanceControl.Amount, :t}
    ]
  end
end
