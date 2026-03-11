defmodule Adyen.Account.V4.UpdateAccountResponse do
  @moduledoc """
  Provides struct and type for a UpdateAccountResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          description: String.t() | nil,
          payoutSchedule: Adyen.Account.V4.PayoutScheduleResponse.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [
    :accountCode,
    :description,
    :payoutSchedule,
    :pspReference,
    :resultCode,
    :submittedAsync
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      description: :string,
      payoutSchedule: {Adyen.Account.V4.PayoutScheduleResponse, :t},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
