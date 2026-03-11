defmodule Adyen.Accounts.AccountEvent do
  @moduledoc """
  Provides struct and type for a AccountEvent
  """

  @type t :: %__MODULE__{
          event: String.t() | nil,
          executionDate: DateTime.t() | nil,
          reason: String.t() | nil
        }

  defstruct [:event, :executionDate, :reason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      event: {:enum, ["InactivateAccount", "RefundNotPaidOutTransfers"]},
      executionDate: {:string, "date-time"},
      reason: :string
    ]
  end
end
