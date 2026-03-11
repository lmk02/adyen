defmodule Adyen.Account.V6.UpdateAccountRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          bankAccountUUID: String.t() | nil,
          description: String.t() | nil,
          metadata: map | nil,
          payoutMethodCode: String.t() | nil,
          payoutSchedule: Adyen.Account.V6.UpdatePayoutScheduleRequest.t() | nil,
          payoutSpeed: String.t() | nil
        }

  defstruct [
    :accountCode,
    :bankAccountUUID,
    :description,
    :metadata,
    :payoutMethodCode,
    :payoutSchedule,
    :payoutSpeed
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      bankAccountUUID: :string,
      description: :string,
      metadata: :map,
      payoutMethodCode: :string,
      payoutSchedule: {Adyen.Account.V6.UpdatePayoutScheduleRequest, :t},
      payoutSpeed: {:enum, ["INSTANT", "SAME_DAY", "STANDARD"]}
    ]
  end
end
