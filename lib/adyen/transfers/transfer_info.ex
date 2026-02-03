defmodule Adyen.Transfers.TransferInfo do
  @moduledoc """
  Provides struct and type for a TransferInfo
  """

  alias Adyen.Transfers.Amount
  alias Adyen.Transfers.CounterpartyInfoV3
  alias Adyen.Transfers.ExecutionDate
  alias Adyen.Transfers.TransferRequestReview
  alias Adyen.Transfers.UltimatePartyIdentification

  @type t :: %__MODULE__{
          amount: Amount.t(),
          balanceAccountId: String.t() | nil,
          category: String.t(),
          counterparty: CounterpartyInfoV3.t(),
          description: String.t() | nil,
          executionDate: ExecutionDate.t() | nil,
          paymentInstrumentId: String.t() | nil,
          priorities: [String.t()] | nil,
          priority: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          review: TransferRequestReview.t() | nil,
          type: String.t() | nil,
          ultimateParty: UltimatePartyIdentification.t() | nil
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
      amount: {Amount, :t},
      balanceAccountId: :string,
      category: {:enum, ["bank", "card", "internal", "issuedCard", "platformPayment", "topUp"]},
      counterparty: {CounterpartyInfoV3, :t},
      description: :string,
      executionDate: {ExecutionDate, :t},
      paymentInstrumentId: :string,
      priorities: [enum: ["crossBorder", "fast", "instant", "internal", "regular", "wire"]],
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      reference: :string,
      referenceForBeneficiary: :string,
      review: {TransferRequestReview, :t},
      type: {:enum, ["bankTransfer", "internalTransfer", "internalDirectDebit"]},
      ultimateParty: {UltimatePartyIdentification, :t}
    ]
  end
end
