defmodule Adyen.BalancePlatform.TransactionRuleInfo do
  @moduledoc """
  Provides struct and type for a TransactionRuleInfo
  """

  alias Adyen.BalancePlatform.TransactionRuleEntityKey
  alias Adyen.BalancePlatform.TransactionRuleInterval
  alias Adyen.BalancePlatform.TransactionRuleRestrictions

  @type t :: %__MODULE__{
          aggregationLevel: String.t() | nil,
          description: String.t(),
          endDate: String.t() | nil,
          entityKey: TransactionRuleEntityKey.t(),
          interval: TransactionRuleInterval.t(),
          outcomeType: String.t() | nil,
          reference: String.t(),
          requestType: String.t() | nil,
          ruleRestrictions: TransactionRuleRestrictions.t(),
          score: integer | nil,
          startDate: String.t() | nil,
          status: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :aggregationLevel,
    :description,
    :endDate,
    :entityKey,
    :interval,
    :outcomeType,
    :reference,
    :requestType,
    :ruleRestrictions,
    :score,
    :startDate,
    :status,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aggregationLevel: :string,
      description: :string,
      endDate: :string,
      entityKey: {TransactionRuleEntityKey, :t},
      interval: {TransactionRuleInterval, :t},
      outcomeType: {:enum, ["enforceSCA", "hardBlock", "scoreBased", "timedBlock"]},
      reference: :string,
      requestType: {:enum, ["authentication", "authorization", "bankTransfer", "tokenization"]},
      ruleRestrictions: {TransactionRuleRestrictions, :t},
      score: {:integer, "int32"},
      startDate: :string,
      status: {:enum, ["active", "inactive"]},
      type: {:enum, ["allowList", "blockList", "maxUsage", "velocity"]}
    ]
  end
end
