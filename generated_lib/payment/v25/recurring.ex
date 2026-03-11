defmodule Adyen.Payment.V25.Recurring do
  @moduledoc """
  Provides struct and type for a Recurring
  """

  @type t :: %__MODULE__{
          contract: String.t() | nil,
          recurringDetailName: String.t() | nil,
          tokenService: String.t() | nil
        }

  defstruct [:contract, :recurringDetailName, :tokenService]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contract: {:enum, ["ONECLICK", "ONECLICK,RECURRING", "RECURRING", "PAYOUT", "EXTERNAL"]},
      recurringDetailName: :string,
      tokenService:
        {:enum, ["VISATOKENSERVICE", "MCTOKENSERVICE", "AMEXTOKENSERVICE", "TOKEN_SHARING"]}
    ]
  end
end
