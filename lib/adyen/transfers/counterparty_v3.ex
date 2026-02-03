defmodule Adyen.Transfers.CounterpartyV3 do
  @moduledoc """
  Provides struct and type for a CounterpartyV3
  """

  alias Adyen.Transfers.BankAccountV3
  alias Adyen.Transfers.Card
  alias Adyen.Transfers.MerchantData

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: BankAccountV3.t() | nil,
          card: Card.t() | nil,
          merchant: MerchantData.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :card, :merchant, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {BankAccountV3, :t},
      card: {Card, :t},
      merchant: {MerchantData, :t},
      transferInstrumentId: :string
    ]
  end
end
