defmodule Adyen.Transfers.Modification do
  @moduledoc """
  Provides struct and type for a Modification
  """

  @type t :: %__MODULE__{
          direction: String.t() | nil,
          id: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:direction, :id, :reference, :status, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      direction: :string,
      id: :string,
      reference: :string,
      status:
        {:enum,
         [
           "approvalPending",
           "atmWithdrawal",
           "atmWithdrawalReversalPending",
           "atmWithdrawalReversed",
           "authAdjustmentAuthorised",
           "authAdjustmentError",
           "authAdjustmentRefused",
           "authorised",
           "bankTransfer",
           "bankTransferPending",
           "booked",
           "bookingPending",
           "cancelled",
           "capturePending",
           "captureReversalPending",
           "captureReversed",
           "captured",
           "capturedExternally",
           "chargeback",
           "chargebackExternally",
           "chargebackPending",
           "chargebackReversalPending",
           "chargebackReversed",
           "credited",
           "depositCorrection",
           "depositCorrectionPending",
           "dispute",
           "disputeClosed",
           "disputeExpired",
           "disputeNeedsReview",
           "error",
           "expired",
           "failed",
           "fee",
           "feePending",
           "internalTransfer",
           "internalTransferPending",
           "invoiceDeduction",
           "invoiceDeductionPending",
           "manualCorrectionPending",
           "manuallyCorrected",
           "matchedStatement",
           "matchedStatementPending",
           "merchantPayin",
           "merchantPayinPending",
           "merchantPayinReversed",
           "merchantPayinReversedPending",
           "miscCost",
           "miscCostPending",
           "paymentCost",
           "paymentCostPending",
           "pendingApproval",
           "pendingExecution",
           "received",
           "refundPending",
           "refundReversalPending",
           "refundReversed",
           "refunded",
           "refundedExternally",
           "refused",
           "rejected",
           "reserveAdjustment",
           "reserveAdjustmentPending",
           "returned",
           "secondChargeback",
           "secondChargebackPending",
           "undefined"
         ]},
      type: :string
    ]
  end
end
