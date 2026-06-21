defmodule Adyen.BalancePlatform.V1.CapitalBalanceWrapper do
  @moduledoc """
  Provides struct and type for a CapitalBalanceWrapper
  """

  @type t :: %__MODULE__{CapitalBalance: Adyen.BalancePlatform.V1.CapitalBalance.t() | nil}

  defstruct [:CapitalBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [CapitalBalance: {Adyen.BalancePlatform.V1.CapitalBalance, :t}]
  end
end
