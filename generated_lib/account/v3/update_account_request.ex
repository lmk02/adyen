defmodule Adyen.Account.V3.UpdateAccountRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          payoutSchedule: Adyen.Account.V3.UpdatePayoutScheduleRequest.t()
        }

  defstruct [:accountCode, :payoutSchedule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, payoutSchedule: {Adyen.Account.V3.UpdatePayoutScheduleRequest, :t}]
  end
end
