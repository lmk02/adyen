defmodule Adyen.Transfer.V4.TransactionEventViolation do
  @moduledoc """
  Provides struct and type for a TransactionEventViolation
  """

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          transactionRule: Adyen.Transfer.V4.TransactionRuleReference.t() | nil,
          transactionRuleSource: Adyen.Transfer.V4.TransactionRuleSource.t() | nil
        }

  defstruct [:reason, :transactionRule, :transactionRuleSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: :string,
      transactionRule: {Adyen.Transfer.V4.TransactionRuleReference, :t},
      transactionRuleSource: {Adyen.Transfer.V4.TransactionRuleSource, :t}
    ]
  end
end
