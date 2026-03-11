defmodule Adyen.Transfer.V3.TransferInfo do
  @moduledoc """
  Provides struct and type for a TransferInfo
  """

  @type t :: %__MODULE__{
          amount: Adyen.Transfer.V3.Amount.t(),
          balanceAccountId: String.t() | nil,
          category: String.t(),
          counterparty: Adyen.Transfer.V3.CounterpartyInfoV3.t(),
          description: String.t() | nil,
          executionDate: Adyen.Transfer.V3.ExecutionDate.t() | nil,
          paymentInstrumentId: String.t() | nil,
          priority: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          review: Adyen.Transfer.V3.TransferRequestReview.t() | nil,
          type: String.t() | nil,
          ultimateParty: Adyen.Transfer.V3.UltimatePartyIdentification.t() | nil
        }

  defstruct [
    :amount,
    :balanceAccountId,
    :category,
    :counterparty,
    :description,
    :executionDate,
    :paymentInstrumentId,
    :priority,
    :reference,
    :referenceForBeneficiary,
    :review,
    :type,
    :ultimateParty
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfer.V3.Amount, :t},
      balanceAccountId: :string,
      category: {:enum, ["bank", "card", "internal", "issuedCard", "platformPayment", "topUp"]},
      counterparty: {Adyen.Transfer.V3.CounterpartyInfoV3, :t},
      description: :string,
      executionDate: {Adyen.Transfer.V3.ExecutionDate, :t},
      paymentInstrumentId: :string,
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      reference: :string,
      referenceForBeneficiary: :string,
      review: {Adyen.Transfer.V3.TransferRequestReview, :t},
      type: {:enum, ["bankTransfer", "internalTransfer", "internalDirectDebit"]},
      ultimateParty: {Adyen.Transfer.V3.UltimatePartyIdentification, :t}
    ]
  end
end
