defmodule Adyen.BalancePlatform.V2.BalanceAccountConfigurationRequest do
  @moduledoc """
  Provides struct and type for a BalanceAccountConfigurationRequest
  """

  @type t :: %__MODULE__{
          balancePlatformPayoutScheduleId: String.t(),
          currency: String.t() | nil,
          description: String.t() | nil,
          enabled: boolean | nil,
          frequency: String.t(),
          frequencyValue: integer | nil,
          maxPayoutAmount: integer | nil,
          minPayoutAmount: integer | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          retainedAmount: integer | nil,
          salesDayClosingTime: String.t() | nil,
          transferInstrumentId: String.t()
        }

  defstruct [
    :balancePlatformPayoutScheduleId,
    :currency,
    :description,
    :enabled,
    :frequency,
    :frequencyValue,
    :maxPayoutAmount,
    :minPayoutAmount,
    :reference,
    :referenceForBeneficiary,
    :retainedAmount,
    :salesDayClosingTime,
    :transferInstrumentId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatformPayoutScheduleId: :string,
      currency: :string,
      description: :string,
      enabled: :boolean,
      frequency: {:enum, ["daily", "weekly", "weekdays", "monthly"]},
      frequencyValue: {:integer, "int32"},
      maxPayoutAmount: {:integer, "int64"},
      minPayoutAmount: {:integer, "int64"},
      reference: :string,
      referenceForBeneficiary: :string,
      retainedAmount: {:integer, "int64"},
      salesDayClosingTime: :string,
      transferInstrumentId: :string
    ]
  end
end
