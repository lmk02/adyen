defmodule Adyen.Transfers.TransactionEventViolation do
  @moduledoc """
  Provides struct and type for a TransactionEventViolation
  """

  alias Adyen.Transfers.TransactionRuleReference
  alias Adyen.Transfers.TransactionRuleSource

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          transactionRule: TransactionRuleReference.t() | nil,
          transactionRuleSource: TransactionRuleSource.t() | nil
        }

  defstruct [:reason, :transactionRule, :transactionRuleSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: :string,
      transactionRule: {TransactionRuleReference, :t},
      transactionRuleSource: {TransactionRuleSource, :t}
    ]
  end
end
