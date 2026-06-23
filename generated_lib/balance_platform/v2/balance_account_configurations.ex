defmodule Adyen.BalancePlatform.V2.BalanceAccountConfigurations do
  @moduledoc """
  Provides struct and type for a BalanceAccountConfigurations
  """

  @type t :: %__MODULE__{
          balanceAccountPayoutSchedules: [
            Adyen.BalancePlatform.V2.BalanceAccountConfiguration.t()
          ],
          link: Adyen.BalancePlatform.V2.Link.t()
        }

  defstruct [:balanceAccountPayoutSchedules, :link]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountPayoutSchedules: [{Adyen.BalancePlatform.V2.BalanceAccountConfiguration, :t}],
      link: {Adyen.BalancePlatform.V2.Link, :t}
    ]
  end
end
