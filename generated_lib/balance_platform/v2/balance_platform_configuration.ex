defmodule Adyen.BalancePlatform.V2.BalancePlatformConfiguration do
  @moduledoc """
  Provides struct and type for a BalancePlatformConfiguration
  """

  @type t :: %__MODULE__{
          automaticApplication: boolean | nil,
          balancePlatformId: String.t(),
          countryCode: String.t() | nil,
          createdAt: DateTime.t(),
          currency: String.t() | nil,
          defaultDescription: String.t() | nil,
          defaultFrequency: String.t() | nil,
          defaultFrequencyValue: integer | nil,
          defaultReference: String.t() | nil,
          defaultReferenceForBeneficiary: String.t() | nil,
          enabled: boolean | nil,
          id: String.t() | nil,
          maxPayoutAmount: integer | nil,
          minPayoutAmount: integer | nil,
          payoutScheduleDescription: String.t(),
          retainedAmount: integer | nil,
          updatedAt: DateTime.t() | nil,
          userSettlementDelay: integer,
          userSettlementTime: Adyen.BalancePlatform.V2.LocalTime.t(),
          userSettlementTimeZone: String.t()
        }

  defstruct [
    :automaticApplication,
    :balancePlatformId,
    :countryCode,
    :createdAt,
    :currency,
    :defaultDescription,
    :defaultFrequency,
    :defaultFrequencyValue,
    :defaultReference,
    :defaultReferenceForBeneficiary,
    :enabled,
    :id,
    :maxPayoutAmount,
    :minPayoutAmount,
    :payoutScheduleDescription,
    :retainedAmount,
    :updatedAt,
    :userSettlementDelay,
    :userSettlementTime,
    :userSettlementTimeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      automaticApplication: :boolean,
      balancePlatformId: :string,
      countryCode: :string,
      createdAt: {:string, "date-time"},
      currency: :string,
      defaultDescription: :string,
      defaultFrequency: :string,
      defaultFrequencyValue: {:integer, "int32"},
      defaultReference: :string,
      defaultReferenceForBeneficiary: :string,
      enabled: :boolean,
      id: :string,
      maxPayoutAmount: {:integer, "int64"},
      minPayoutAmount: {:integer, "int64"},
      payoutScheduleDescription: :string,
      retainedAmount: {:integer, "int64"},
      updatedAt: {:string, "date-time"},
      userSettlementDelay: {:integer, "int32"},
      userSettlementTime: {Adyen.BalancePlatform.V2.LocalTime, :t},
      userSettlementTimeZone: :string
    ]
  end
end
