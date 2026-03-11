defmodule Adyen.BalancePlatform.V1.TransactionRuleInterval do
  @moduledoc """
  Provides struct and type for a TransactionRuleInterval
  """

  @type t :: %__MODULE__{type: String.t()}

  defstruct [:type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: {:enum, ["daily", "lifetime", "monthly", "perTransaction", "weekly"]}]
  end
end
