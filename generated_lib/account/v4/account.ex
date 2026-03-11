defmodule Adyen.Account.V4.Account do
  @moduledoc """
  Provides struct and type for a Account
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          beneficiaryAccount: String.t() | nil,
          beneficiaryMerchantReference: String.t() | nil,
          description: String.t() | nil,
          payoutSchedule: Adyen.Account.V4.PayoutScheduleResponse.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :accountCode,
    :beneficiaryAccount,
    :beneficiaryMerchantReference,
    :description,
    :payoutSchedule,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      beneficiaryAccount: :string,
      beneficiaryMerchantReference: :string,
      description: :string,
      payoutSchedule: {Adyen.Account.V4.PayoutScheduleResponse, :t},
      status: :string
    ]
  end
end
