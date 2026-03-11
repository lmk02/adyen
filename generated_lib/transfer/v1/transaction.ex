defmodule Adyen.Transfer.V1.Transaction do
  @moduledoc """
  Provides struct and type for a Transaction
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Adyen.Transfer.V1.Amount.t(),
          balanceAccountId: String.t(),
          balancePlatform: String.t(),
          bookingDate: DateTime.t(),
          category: String.t() | nil,
          counterparty: Adyen.Transfer.V1.Counterparty.t(),
          createdAt: DateTime.t(),
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          instructedAmount: Adyen.Transfer.V1.Amount.t() | nil,
          paymentInstrumentId: String.t() | nil,
          reference: String.t(),
          referenceForBeneficiary: String.t() | nil,
          status: String.t(),
          transferId: String.t() | nil,
          type: String.t() | nil,
          valueDate: DateTime.t()
        }

  defstruct [
    :accountHolderId,
    :amount,
    :balanceAccountId,
    :balancePlatform,
    :bookingDate,
    :category,
    :counterparty,
    :createdAt,
    :creationDate,
    :description,
    :id,
    :instructedAmount,
    :paymentInstrumentId,
    :reference,
    :referenceForBeneficiary,
    :status,
    :transferId,
    :type,
    :valueDate
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      amount: {Adyen.Transfer.V1.Amount, :t},
      balanceAccountId: :string,
      balancePlatform: :string,
      bookingDate: {:string, "date-time"},
      category:
        {:enum,
         [
           "bank",
           "card",
           "grants",
           "interest",
           "internal",
           "issuedCard",
           "migration",
           "platformPayment",
           "topUp",
           "upgrade"
         ]},
      counterparty: {Adyen.Transfer.V1.Counterparty, :t},
      createdAt: {:string, "date-time"},
      creationDate: {:string, "date-time"},
      description: :string,
      id: :string,
      instructedAmount: {Adyen.Transfer.V1.Amount, :t},
      paymentInstrumentId: :string,
      reference: :string,
      referenceForBeneficiary: :string,
      status: {:enum, ["booked", "pending"]},
      transferId: :string,
      type:
        {:enum,
         [
           "atmWithdrawal",
           "atmWithdrawalReversal",
           "balanceAdjustment",
           "balanceMigration",
           "balanceRollover",
           "bankDirectDebit",
           "bankTransfer",
           "capitalFundsCollection",
           "capture",
           "captureReversal",
           "cardTransfer",
           "cashOutFee",
           "cashOutFunding",
           "cashOutInstruction",
           "cashoutFee",
           "cashoutFunding",
           "cashoutRepayment",
           "chargeback",
           "chargebackCorrection",
           "chargebackReversal",
           "chargebackReversalCorrection",
           "depositCorrection",
           "fee",
           "grant",
           "installment",
           "installmentReversal",
           "interestPayout",
           "internalDirectDebit",
           "internalTransfer",
           "invoiceDeduction",
           "leftover",
           "manualCorrection",
           "miscCost",
           "payment",
           "paymentCost",
           "refund",
           "refundReversal",
           "repayment",
           "reserveAdjustment",
           "secondChargeback",
           "secondChargebackCorrection"
         ]},
      valueDate: {:string, "date-time"}
    ]
  end
end
