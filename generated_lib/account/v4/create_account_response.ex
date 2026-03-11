defmodule Adyen.Account.V4.CreateAccountResponse do
  @moduledoc """
  Provides struct and type for a CreateAccountResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          description: String.t() | nil,
          payoutSchedule: Adyen.Account.V4.PayoutScheduleResponse.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          status: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :description,
    :payoutSchedule,
    :pspReference,
    :resultCode,
    :status,
    :submittedAsync
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountHolderCode: :string,
      description: :string,
      payoutSchedule: {Adyen.Account.V4.PayoutScheduleResponse, :t},
      pspReference: :string,
      resultCode: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      submittedAsync: :boolean
    ]
  end
end
