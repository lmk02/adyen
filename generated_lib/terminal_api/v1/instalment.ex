defmodule Adyen.TerminalAPI.V1.Instalment do
  @moduledoc """
  Provides struct and type for a Instalment
  """

  @type t :: %__MODULE__{
          Charges: number | nil,
          CumulativeAmount: number | nil,
          FirstAmount: number | nil,
          FirstPaymentDate: Date.t() | nil,
          InstalmentType: String.t() | nil,
          Period: integer | nil,
          PeriodUnit: String.t() | nil,
          PlanID: String.t() | nil,
          SequenceNumber: integer | nil,
          TotalNbOfPayments: integer | nil
        }

  defstruct [
    :Charges,
    :CumulativeAmount,
    :FirstAmount,
    :FirstPaymentDate,
    :InstalmentType,
    :Period,
    :PeriodUnit,
    :PlanID,
    :SequenceNumber,
    :TotalNbOfPayments
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Charges: :number,
      CumulativeAmount: :number,
      FirstAmount: :number,
      FirstPaymentDate: {:string, "date"},
      InstalmentType: {:enum, ["DeferredInstalments", "EqualInstalments", "InequalInstalments"]},
      Period: :integer,
      PeriodUnit: {:enum, ["Annual", "Daily", "Monthly", "Weekly"]},
      PlanID: :string,
      SequenceNumber: :integer,
      TotalNbOfPayments: :integer
    ]
  end
end
