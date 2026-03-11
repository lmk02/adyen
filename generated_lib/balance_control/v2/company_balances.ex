defmodule Adyen.BalanceControl.V2.CompanyBalances do
  @moduledoc """
  Provides struct and type for a CompanyBalances
  """

  @type t :: %__MODULE__{
          merchantBalancesOverview: [Adyen.BalanceControl.V2.MerchantBalance.t()] | nil
        }

  defstruct [:merchantBalancesOverview]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantBalancesOverview: [{Adyen.BalanceControl.V2.MerchantBalance, :t}]]
  end
end
