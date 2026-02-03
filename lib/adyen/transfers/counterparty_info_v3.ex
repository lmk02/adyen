defmodule Adyen.Transfers.CounterpartyInfoV3 do
  @moduledoc """
  Provides struct and type for a CounterpartyInfoV3
  """

  alias Adyen.Transfers.BankAccountV3
  alias Adyen.Transfers.Card

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: BankAccountV3.t() | nil,
          card: Card.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :card, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {BankAccountV3, :t},
      card: {Card, :t},
      transferInstrumentId: :string
    ]
  end
end
