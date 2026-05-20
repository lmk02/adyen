defmodule Adyen.BalancePlatform.V2.PatchableBalanceAccountConfigurationRequest do
  @moduledoc """
  Provides struct and type for a PatchableBalanceAccountConfigurationRequest
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          enabled: boolean | nil,
          frequency: String.t() | nil,
          frequencyValue: integer | nil,
          maxPayoutAmount: integer | nil,
          minPayoutAmount: integer | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          retainedAmount: integer | nil,
          salesDayClosingTime: String.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [
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
      description: {:union, [:string, :null]},
      enabled: {:union, [:boolean, :null]},
      frequency: {:enum, ["daily", "weekly", "weekdays", "monthly"]},
      frequencyValue: {:union, [{:integer, "int32"}, :null]},
      maxPayoutAmount: {:union, [{:integer, "int64"}, :null]},
      minPayoutAmount: {:union, [{:integer, "int64"}, :null]},
      reference: {:union, [:string, :null]},
      referenceForBeneficiary: {:union, [:string, :null]},
      retainedAmount: {:union, [{:integer, "int64"}, :null]},
      salesDayClosingTime: :string,
      transferInstrumentId: :string
    ]
  end
end
