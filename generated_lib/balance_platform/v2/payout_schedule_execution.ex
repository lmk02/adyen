defmodule Adyen.BalancePlatform.V2.PayoutScheduleExecution do
  @moduledoc """
  Provides struct and type for a PayoutScheduleExecution
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          result: String.t() | nil,
          resultDetails: Adyen.BalancePlatform.V2.PayoutScheduleExecutionDetails.t() | nil,
          triggeredAt: DateTime.t() | nil
        }

  defstruct [:id, :result, :resultDetails, :triggeredAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      result: {:enum, ["failed", "succeeded", "skipped"]},
      resultDetails: {Adyen.BalancePlatform.V2.PayoutScheduleExecutionDetails, :t},
      triggeredAt: {:string, "date-time"}
    ]
  end
end
