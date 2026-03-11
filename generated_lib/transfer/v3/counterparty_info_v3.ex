defmodule Adyen.Transfer.V3.CounterpartyInfoV3 do
  @moduledoc """
  Provides struct and type for a CounterpartyInfoV3
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: Adyen.Transfer.V3.BankAccountV3.t() | nil,
          card: Adyen.Transfer.V3.Card.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :card, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {Adyen.Transfer.V3.BankAccountV3, :t},
      card: {Adyen.Transfer.V3.Card, :t},
      transferInstrumentId: :string
    ]
  end
end
