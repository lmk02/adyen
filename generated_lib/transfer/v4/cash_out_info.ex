defmodule Adyen.Transfer.V4.CashOutInfo do
  @moduledoc """
  Provides struct and type for a CashOutInfo
  """

  @type t :: %__MODULE__{
          amount: Adyen.Transfer.V4.Amount.t(),
          counterparty: Adyen.Transfer.V4.CashOutInfoCounterparty.t() | nil,
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          fee: Adyen.Transfer.V4.Fee.t() | nil,
          id: String.t() | nil,
          instructingBalanceAccountId: String.t(),
          referenceForBeneficiary: String.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [
    :amount,
    :counterparty,
    :creationDate,
    :description,
    :fee,
    :id,
    :instructingBalanceAccountId,
    :referenceForBeneficiary,
    :transferInstrumentId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfer.V4.Amount, :t},
      counterparty: {Adyen.Transfer.V4.CashOutInfoCounterparty, :t},
      creationDate: {:string, "date-time"},
      description: :string,
      fee: {Adyen.Transfer.V4.Fee, :t},
      id: :string,
      instructingBalanceAccountId: :string,
      referenceForBeneficiary: :string,
      transferInstrumentId: :string
    ]
  end
end
