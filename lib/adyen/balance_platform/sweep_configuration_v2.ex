defmodule Adyen.BalancePlatform.SweepConfigurationV2 do
  @moduledoc """
  Provides struct and type for a SweepConfigurationV2
  """

  alias Adyen.BalancePlatform.Amount
  alias Adyen.BalancePlatform.SweepCounterparty
  alias Adyen.BalancePlatform.SweepSchedule

  @type t :: %__MODULE__{
          category: String.t() | nil,
          counterparty: SweepCounterparty.t(),
          currency: String.t(),
          description: String.t() | nil,
          id: String.t(),
          priorities: [String.t()] | nil,
          reason: String.t() | nil,
          reasonDetail: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          schedule: SweepSchedule.t(),
          status: String.t() | nil,
          sweepAmount: Amount.t() | nil,
          targetAmount: Amount.t() | nil,
          triggerAmount: Amount.t() | nil,
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
      counterparty: {SweepCounterparty, :t},
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
      schedule: {SweepSchedule, :t},
      status: {:enum, ["active", "inactive"]},
      sweepAmount: {Amount, :t},
      targetAmount: {Amount, :t},
      triggerAmount: {Amount, :t},
      type: {:enum, ["pull", "push"]}
    ]
  end
end
