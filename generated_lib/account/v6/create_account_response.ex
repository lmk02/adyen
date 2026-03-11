defmodule Adyen.Account.V6.CreateAccountResponse do
  @moduledoc """
  Provides struct and type for a CreateAccountResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          description: String.t() | nil,
          invalidFields: [Adyen.Account.V6.ErrorFieldType.t()] | nil,
          metadata: map | nil,
          payoutMethodCode: String.t() | nil,
          payoutSchedule: Adyen.Account.V6.PayoutScheduleResponse.t() | nil,
          payoutSpeed: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :bankAccountUUID,
    :description,
    :invalidFields,
    :metadata,
    :payoutMethodCode,
    :payoutSchedule,
    :payoutSpeed,
    :pspReference,
    :resultCode,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountHolderCode: :string,
      bankAccountUUID: :string,
      description: :string,
      invalidFields: [{Adyen.Account.V6.ErrorFieldType, :t}],
      metadata: :map,
      payoutMethodCode: :string,
      payoutSchedule: {Adyen.Account.V6.PayoutScheduleResponse, :t},
      payoutSpeed: {:enum, ["INSTANT", "SAME_DAY", "STANDARD"]},
      pspReference: :string,
      resultCode: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]}
    ]
  end
end
