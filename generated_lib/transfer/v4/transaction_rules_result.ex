defmodule Adyen.Transfer.V4.TransactionRulesResult do
  @moduledoc """
  Provides struct and type for a TransactionRulesResult
  """

  @type t :: %__MODULE__{
          advice: String.t() | nil,
          allHardBlockRulesPassed: boolean | nil,
          score: integer | nil,
          triggeredTransactionRules: [Adyen.Transfer.V4.TransactionEventViolation.t()] | nil
        }

  defstruct [:advice, :allHardBlockRulesPassed, :score, :triggeredTransactionRules]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      advice: :string,
      allHardBlockRulesPassed: :boolean,
      score: {:integer, "int32"},
      triggeredTransactionRules: [{Adyen.Transfer.V4.TransactionEventViolation, :t}]
    ]
  end
end
