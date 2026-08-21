defmodule Adyen.BalancePlatform.V2.BalanceAccountConfiguration do
  @moduledoc """
  Provides struct and type for a BalanceAccountConfiguration
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t(),
          balancePlatformPayoutScheduleId: String.t(),
          createdAt: DateTime.t(),
          currency: String.t() | nil,
          description: String.t() | nil,
          enabled: boolean | nil,
          frequency: String.t() | nil,
          frequencyValue: integer | nil,
          id: String.t() | nil,
          maxPayoutAmount: integer | nil,
          minPayoutAmount: integer | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          retainedAmount: integer | nil,
          salesDayClosingTime: String.t() | nil,
          transferInstrumentId: String.t(),
          updatedAt: DateTime.t() | nil
        }

  defstruct [
    :balanceAccountId,
    :balancePlatformPayoutScheduleId,
    :createdAt,
    :currency,
    :description,
    :enabled,
    :frequency,
    :frequencyValue,
    :id,
    :maxPayoutAmount,
    :minPayoutAmount,
    :reference,
    :referenceForBeneficiary,
    :retainedAmount,
    :salesDayClosingTime,
    :transferInstrumentId,
    :updatedAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      balancePlatformPayoutScheduleId: :string,
      createdAt: {:string, "date-time"},
      currency: :string,
      description: :string,
      enabled: :boolean,
      frequency: :string,
      frequencyValue: {:integer, "int32"},
      id: :string,
      maxPayoutAmount: {:integer, "int64"},
      minPayoutAmount: {:integer, "int64"},
      reference: :string,
      referenceForBeneficiary: :string,
      retainedAmount: {:integer, "int64"},
      salesDayClosingTime: :string,
      transferInstrumentId: :string,
      updatedAt: {:string, "date-time"}
    ]
  end
end
