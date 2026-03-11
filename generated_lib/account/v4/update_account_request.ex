defmodule Adyen.Account.V4.UpdateAccountRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          description: String.t() | nil,
          payoutSchedule: Adyen.Account.V4.UpdatePayoutScheduleRequest.t() | nil
        }

  defstruct [:accountCode, :description, :payoutSchedule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      description: :string,
      payoutSchedule: {Adyen.Account.V4.UpdatePayoutScheduleRequest, :t}
    ]
  end
end
