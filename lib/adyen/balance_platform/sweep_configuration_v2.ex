defmodule Adyen.BalancePlatform.SweepConfigurationV2 do
  @moduledoc """
  Provides struct and type for a SweepConfigurationV2
  """

  @type t :: %__MODULE__{
          category: String.t() | nil,
          counterparty: Adyen.BalancePlatform.SweepCounterparty.t(),
          currency: String.t(),
          description: String.t() | nil,
          id: String.t(),
          priorities: [String.t()] | nil,
          reason: String.t() | nil,
          reasonDetail: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          schedule: Adyen.BalancePlatform.SweepSchedule.t(),
          status: String.t() | nil,
          sweepAmount: Adyen.BalancePlatform.Amount.t() | nil,
          targetAmount: Adyen.BalancePlatform.Amount.t() | nil,
          triggerAmount: Adyen.BalancePlatform.Amount.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :category,
    :counterparty,
    :currency,
    :description,
    :id,
    :priorities,
    :reason,
    :reasonDetail,
    :reference,
    :referenceForBeneficiary,
    :schedule,
    :status,
    :sweepAmount,
    :targetAmount,
    :triggerAmount,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      category: {:enum, ["bank", "internal", "platformPayment"]},
      counterparty: {Adyen.BalancePlatform.SweepCounterparty, :t},
      currency: :string,
      description: :string,
      id: :string,
      priorities: [enum: ["crossBorder", "fast", "instant", "internal", "regular", "wire"]],
      reason:
        {:enum,
         [
           "accountHierarchyNotActive",
           "amountLimitExceeded",
           "approved",
           "counterpartyAccountBlocked",
           "counterpartyAccountClosed",
           "counterpartyAccountNotFound",
           "counterpartyAddressRequired",
           "counterpartyBankTimedOut",
           "counterpartyBankUnavailable",
           "directDebitNotSupported",
           "error",
           "notEnoughBalance",
           "refusedByCounterpartyBank",
           "routeNotFound",
           "transferInstrumentDoesNotExist",
           "unknown"
         ]},
      reasonDetail: :string,
      reference: :string,
      referenceForBeneficiary: :string,
      schedule: {Adyen.BalancePlatform.SweepSchedule, :t},
      status: {:enum, ["active", "inactive"]},
      sweepAmount: {Adyen.BalancePlatform.Amount, :t},
      targetAmount: {Adyen.BalancePlatform.Amount, :t},
      triggerAmount: {Adyen.BalancePlatform.Amount, :t},
      type: {:enum, ["pull", "push"]}
    ]
  end
end
