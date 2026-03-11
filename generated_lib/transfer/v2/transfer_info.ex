defmodule Adyen.Transfer.V2.TransferInfo do
  @moduledoc """
  Provides struct and type for a TransferInfo
  """

  @type t :: %__MODULE__{
          amount: Adyen.Transfer.V2.Amount.t(),
          balanceAccountId: String.t() | nil,
          bank: Adyen.Transfer.V2.Bank.t() | nil,
          counterparty: Adyen.Transfer.V2.CounterpartyInfo.t(),
          description: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil
        }

  defstruct [
    :amount,
    :balanceAccountId,
    :bank,
    :counterparty,
    :description,
    :paymentInstrumentId,
    :reference,
    :referenceForBeneficiary
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfer.V2.Amount, :t},
      balanceAccountId: :string,
      bank: {Adyen.Transfer.V2.Bank, :t},
      counterparty: {Adyen.Transfer.V2.CounterpartyInfo, :t},
      description: :string,
      paymentInstrumentId: :string,
      reference: :string,
      referenceForBeneficiary: :string
    ]
  end
end
