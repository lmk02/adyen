defmodule Adyen.BalancePlatform.TransactionRulesResponse do
  @moduledoc """
  Provides struct and type for a TransactionRulesResponse
  """

  alias Adyen.BalancePlatform.TransactionRule

  @type t :: %__MODULE__{transactionRules: [TransactionRule.t()] | nil}

  defstruct [:transactionRules]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionRules: [{TransactionRule, :t}]]
  end
end
