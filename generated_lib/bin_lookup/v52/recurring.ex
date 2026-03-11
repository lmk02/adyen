defmodule Adyen.BinLookup.V52.Recurring do
  @moduledoc """
  Provides struct and type for a Recurring
  """

  @type t :: %__MODULE__{
          contract: String.t() | nil,
          recurringDetailName: String.t() | nil,
          recurringExpiry: DateTime.t() | nil,
          recurringFrequency: String.t() | nil,
          tokenService: String.t() | nil
        }

  defstruct [
    :contract,
    :recurringDetailName,
    :recurringExpiry,
    :recurringFrequency,
    :tokenService
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contract: {:enum, ["ONECLICK", "ONECLICK,RECURRING", "RECURRING", "PAYOUT", "EXTERNAL"]},
      recurringDetailName: :string,
      recurringExpiry: {:string, "date-time"},
      recurringFrequency: :string,
      tokenService:
        {:enum, ["VISATOKENSERVICE", "MCTOKENSERVICE", "AMEXTOKENSERVICE", "TOKEN_SHARING"]}
    ]
  end
end
