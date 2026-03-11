defmodule Adyen.Account.V3.Account do
  @moduledoc """
  Provides struct and type for a Account
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          beneficiaryAccount: String.t() | nil,
          beneficiaryMerchantReference: String.t() | nil,
          payoutSchedule: Adyen.Account.V3.PayoutScheduleResponse.t() | nil
        }

  defstruct [:accountCode, :beneficiaryAccount, :beneficiaryMerchantReference, :payoutSchedule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      beneficiaryAccount: :string,
      beneficiaryMerchantReference: :string,
      payoutSchedule: {Adyen.Account.V3.PayoutScheduleResponse, :t}
    ]
  end
end
