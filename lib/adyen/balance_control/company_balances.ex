defmodule Adyen.BalanceControl.CompanyBalances do
  @moduledoc """
  Provides struct and type for a CompanyBalances
  """

  @type t :: %__MODULE__{
          merchantBalancesOverview: [Adyen.BalanceControl.MerchantBalance.t()] | nil
        }

  defstruct [:merchantBalancesOverview]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantBalancesOverview: [{Adyen.BalanceControl.MerchantBalance, :t}]]
  end
end
