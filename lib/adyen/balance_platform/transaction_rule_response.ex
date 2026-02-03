defmodule Adyen.BalancePlatform.TransactionRuleResponse do
  @moduledoc """
  Provides struct and type for a TransactionRuleResponse
  """

  alias Adyen.BalancePlatform.TransactionRule

  @type t :: %__MODULE__{transactionRule: TransactionRule.t() | nil}

  defstruct [:transactionRule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionRule: {TransactionRule, :t}]
  end
end
