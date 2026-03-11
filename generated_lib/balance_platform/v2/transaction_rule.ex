defmodule Adyen.BalancePlatform.V2.TransactionRule do
  @moduledoc """
  Provides struct and type for a TransactionRule
  """

  @type t :: %__MODULE__{
          aggregationLevel: String.t() | nil,
          description: String.t(),
          endDate: String.t() | nil,
          entityKey: Adyen.BalancePlatform.V2.TransactionRuleEntityKey.t(),
          id: String.t() | nil,
          interval: Adyen.BalancePlatform.V2.TransactionRuleInterval.t(),
          outcomeType: String.t() | nil,
          reference: String.t(),
          requestType: String.t() | nil,
          ruleRestrictions: Adyen.BalancePlatform.V2.TransactionRuleRestrictions.t(),
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
    :id,
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
      entityKey: {Adyen.BalancePlatform.V2.TransactionRuleEntityKey, :t},
      id: :string,
      interval: {Adyen.BalancePlatform.V2.TransactionRuleInterval, :t},
      outcomeType: {:enum, ["enforceSCA", "hardBlock", "scoreBased", "timedBlock"]},
      reference: :string,
      requestType: {:enum, ["authentication", "authorization", "bankTransfer", "tokenization"]},
      ruleRestrictions: {Adyen.BalancePlatform.V2.TransactionRuleRestrictions, :t},
      score: {:integer, "int32"},
      startDate: :string,
      status: {:enum, ["active", "inactive"]},
      type: {:enum, ["allowList", "blockList", "maxUsage", "velocity"]}
    ]
  end
end
