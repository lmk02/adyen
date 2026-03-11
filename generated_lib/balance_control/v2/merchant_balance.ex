defmodule Adyen.BalanceControl.V2.MerchantBalance do
  @moduledoc """
  Provides struct and type for a MerchantBalance
  """

  @type t :: %__MODULE__{
          availableFund: Adyen.BalanceControl.V2.Amount.t() | nil,
          deposit: Adyen.BalanceControl.V2.Amount.t() | nil,
          merchantAccount: String.t() | nil,
          nextPayout: Adyen.BalanceControl.V2.Amount.t() | nil,
          pendingBalance: Adyen.BalanceControl.V2.Amount.t() | nil,
          reserve: Adyen.BalanceControl.V2.Amount.t() | nil
        }

  defstruct [:availableFund, :deposit, :merchantAccount, :nextPayout, :pendingBalance, :reserve]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      availableFund: {Adyen.BalanceControl.V2.Amount, :t},
      deposit: {Adyen.BalanceControl.V2.Amount, :t},
      merchantAccount: :string,
      nextPayout: {Adyen.BalanceControl.V2.Amount, :t},
      pendingBalance: {Adyen.BalanceControl.V2.Amount, :t},
      reserve: {Adyen.BalanceControl.V2.Amount, :t}
    ]
  end
end
