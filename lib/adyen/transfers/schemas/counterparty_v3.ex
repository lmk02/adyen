defmodule Adyen.Transfers.CounterpartyV3 do
  @moduledoc """
  Provides struct and type for a CounterpartyV3
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: Adyen.Transfers.BankAccountV3.t() | nil,
          card: Adyen.Transfers.Card.t() | nil,
          merchant: Adyen.Transfers.MerchantData.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :card, :merchant, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {Adyen.Transfers.BankAccountV3, :t},
      card: {Adyen.Transfers.Card, :t},
      merchant: {Adyen.Transfers.MerchantData, :t},
      transferInstrumentId: :string
    ]
  end
end
