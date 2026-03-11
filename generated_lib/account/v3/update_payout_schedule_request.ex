defmodule Adyen.Account.V3.UpdatePayoutScheduleRequest do
  @moduledoc """
  Provides struct and type for a UpdatePayoutScheduleRequest
  """

  @type t :: %__MODULE__{action: String.t() | nil, reason: String.t() | nil, schedule: String.t()}

  defstruct [:action, :reason, :schedule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: {:enum, ["CLOSE", "NOTHING", "UPDATE"]},
      reason: :string,
      schedule:
        {:enum,
         [
           "BIWEEKLY_ON_1ST_AND_15TH_AT_MIDNIGHT",
           "DAILY",
           "DAILY_AU",
           "DAILY_EU",
           "DAILY_SG",
           "DAILY_US",
           "HOLD",
           "MONTHLY",
           "WEEKLY",
           "WEEKLY_MON_TO_FRI_AU",
           "WEEKLY_MON_TO_FRI_EU",
           "WEEKLY_MON_TO_FRI_US",
           "WEEKLY_ON_TUE_FRI_MIDNIGHT",
           "WEEKLY_SUN_TO_THU_AU",
           "WEEKLY_SUN_TO_THU_US"
         ]}
    ]
  end
end
