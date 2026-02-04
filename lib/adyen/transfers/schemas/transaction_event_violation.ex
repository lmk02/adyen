defmodule Adyen.Transfers.TransactionEventViolation do
  @moduledoc """
  Provides struct and type for a TransactionEventViolation
  """

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          transactionRule: Adyen.Transfers.TransactionRuleReference.t() | nil,
          transactionRuleSource: Adyen.Transfers.TransactionRuleSource.t() | nil
        }

  defstruct [:reason, :transactionRule, :transactionRuleSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: :string,
      transactionRule: {Adyen.Transfers.TransactionRuleReference, :t},
      transactionRuleSource: {Adyen.Transfers.TransactionRuleSource, :t}
    ]
  end
end
