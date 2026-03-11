defmodule Adyen.Account.V5.Account do
  @moduledoc """
  Provides struct and type for a Account
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          beneficiaryAccount: String.t() | nil,
          beneficiaryMerchantReference: String.t() | nil,
          description: String.t() | nil,
          metadata: map | nil,
          payoutMethodCode: String.t() | nil,
          payoutSchedule: Adyen.Account.V5.PayoutScheduleResponse.t() | nil,
          payoutSpeed: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :accountCode,
    :bankAccountUUID,
    :beneficiaryAccount,
    :beneficiaryMerchantReference,
    :description,
    :metadata,
    :payoutMethodCode,
    :payoutSchedule,
    :payoutSpeed,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      bankAccountUUID: :string,
      beneficiaryAccount: :string,
      beneficiaryMerchantReference: :string,
      description: :string,
      metadata: :map,
      payoutMethodCode: :string,
      payoutSchedule: {Adyen.Account.V5.PayoutScheduleResponse, :t},
      payoutSpeed: {:enum, ["INSTANT", "SAME_DAY", "STANDARD"]},
      status: :string
    ]
  end
end
