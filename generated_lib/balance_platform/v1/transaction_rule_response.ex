defmodule Adyen.BalancePlatform.V1.TransactionRuleResponse do
  @moduledoc """
  Provides struct and type for a TransactionRuleResponse
  """

  @type t :: %__MODULE__{transactionRule: Adyen.BalancePlatform.V1.TransactionRule.t() | nil}

  defstruct [:transactionRule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionRule: {Adyen.BalancePlatform.V1.TransactionRule, :t}]
  end
end
