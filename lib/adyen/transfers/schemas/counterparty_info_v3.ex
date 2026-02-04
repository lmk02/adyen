defmodule Adyen.Transfers.CounterpartyInfoV3 do
  @moduledoc """
  Provides struct and type for a CounterpartyInfoV3
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: Adyen.Transfers.BankAccountV3.t() | nil,
          card: Adyen.Transfers.Card.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :card, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {Adyen.Transfers.BankAccountV3, :t},
      card: {Adyen.Transfers.Card, :t},
      transferInstrumentId: :string
    ]
  end
end
