defmodule Adyen.Accounts.UpdateAccountResponse do
  @moduledoc """
  Provides struct and type for a UpdateAccountResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          bankAccountUUID: String.t() | nil,
          description: String.t() | nil,
          invalidFields: [Adyen.Accounts.ErrorFieldType.t()] | nil,
          metadata: map | nil,
          payoutMethodCode: String.t() | nil,
          payoutSchedule: Adyen.Accounts.PayoutScheduleResponse.t() | nil,
          payoutSpeed: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [
    :accountCode,
    :bankAccountUUID,
    :description,
    :invalidFields,
    :metadata,
    :payoutMethodCode,
    :payoutSchedule,
    :payoutSpeed,
    :pspReference,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      bankAccountUUID: :string,
      description: :string,
      invalidFields: [{Adyen.Accounts.ErrorFieldType, :t}],
      metadata: :map,
      payoutMethodCode: :string,
      payoutSchedule: {Adyen.Accounts.PayoutScheduleResponse, :t},
      payoutSpeed: {:enum, ["INSTANT", "SAME_DAY", "STANDARD"]},
      pspReference: :string,
      resultCode: :string
    ]
  end
end
