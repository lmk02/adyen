defmodule Adyen.Transfer.V4.TransferInfo do
  @moduledoc """
  Provides struct and type for a TransferInfo
  """

  @type t :: %__MODULE__{
          amount: Adyen.Transfer.V4.Amount.t(),
          balanceAccountId: String.t() | nil,
          category: String.t(),
          counterparty: Adyen.Transfer.V4.CounterpartyInfoV3.t(),
          description: String.t() | nil,
          executionDate: Adyen.Transfer.V4.ExecutionDate.t() | nil,
          paymentInstrumentId: String.t() | nil,
          priorities: [String.t()] | nil,
          priority: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          review: Adyen.Transfer.V4.TransferRequestReview.t() | nil,
          type: String.t() | nil,
          ultimateParty: Adyen.Transfer.V4.UltimatePartyIdentification.t() | nil
        }

  defstruct [
    :amount,
    :balanceAccountId,
    :category,
    :counterparty,
    :description,
    :executionDate,
    :paymentInstrumentId,
    :priorities,
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
      amount: {Adyen.Transfer.V4.Amount, :t},
      balanceAccountId: :string,
      category: {:enum, ["bank", "card", "internal", "issuedCard", "platformPayment", "topUp"]},
      counterparty: {Adyen.Transfer.V4.CounterpartyInfoV3, :t},
      description: :string,
      executionDate: {Adyen.Transfer.V4.ExecutionDate, :t},
      paymentInstrumentId: :string,
      priorities: [enum: ["crossBorder", "fast", "instant", "internal", "regular", "wire"]],
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      reference: :string,
      referenceForBeneficiary: :string,
      review: {Adyen.Transfer.V4.TransferRequestReview, :t},
      type: {:enum, ["bankTransfer", "internalTransfer", "internalDirectDebit"]},
      ultimateParty: {Adyen.Transfer.V4.UltimatePartyIdentification, :t}
    ]
  end
end
