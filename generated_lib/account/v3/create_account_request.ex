defmodule Adyen.Account.V3.CreateAccountRequest do
  @moduledoc """
  Provides struct and type for a CreateAccountRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          payoutSchedule: String.t() | nil,
          payoutScheduleReason: String.t() | nil
        }

  defstruct [:accountHolderCode, :payoutSchedule, :payoutScheduleReason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      payoutSchedule:
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
         ]},
      payoutScheduleReason: :string
    ]
  end
end
