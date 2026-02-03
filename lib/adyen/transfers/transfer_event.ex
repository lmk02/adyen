defmodule Adyen.Transfers.TransferEvent do
  @moduledoc """
  Provides struct and type for a TransferEvent
  """

  alias Adyen.Transfers.Amount
  alias Adyen.Transfers.AmountAdjustment
  alias Adyen.Transfers.BalanceMutation
  alias Adyen.Transfers.ConfirmationTrackingData
  alias Adyen.Transfers.EstimationTrackingData
  alias Adyen.Transfers.ExternalReason
  alias Adyen.Transfers.InternalReviewTrackingData
  alias Adyen.Transfers.IssuingTransactionData
  alias Adyen.Transfers.MerchantPurchaseData
  alias Adyen.Transfers.Modification

  @type t :: %__MODULE__{
          amount: Amount.t() | nil,
          amountAdjustments: [AmountAdjustment.t()] | nil,
          arn: String.t() | nil,
          bookingDate: DateTime.t() | nil,
          estimatedArrivalTime: DateTime.t() | nil,
          eventsData:
            [
              IssuingTransactionData.t()
              | MerchantPurchaseData.t()
            ]
            | nil,
          externalReason: ExternalReason.t() | nil,
          id: String.t() | nil,
          modification: Modification.t() | nil,
          mutations: [BalanceMutation.t()] | nil,
          originalAmount: Amount.t() | nil,
          reason: String.t() | nil,
          status: String.t() | nil,
          trackingData:
            ConfirmationTrackingData.t()
            | EstimationTrackingData.t()
            | InternalReviewTrackingData.t()
            | nil,
          transactionId: String.t() | nil,
          type: String.t() | nil,
          updateDate: DateTime.t() | nil,
          valueDate: DateTime.t() | nil
        }

  defstruct [
    :amount,
    :amountAdjustments,
    :arn,
    :bookingDate,
    :estimatedArrivalTime,
    :eventsData,
    :externalReason,
    :id,
    :modification,
    :mutations,
    :originalAmount,
    :reason,
    :status,
    :trackingData,
    :transactionId,
    :type,
    :updateDate,
    :valueDate
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      amountAdjustments: [{AmountAdjustment, :t}],
      arn: :string,
      bookingDate: {:string, "date-time"},
      estimatedArrivalTime: {:string, "date-time"},
      eventsData: [
        union: [
          {IssuingTransactionData, :t},
          {MerchantPurchaseData, :t}
        ]
      ],
      externalReason: {ExternalReason, :t},
      id: :string,
      modification: {Modification, :t},
      mutations: [{BalanceMutation, :t}],
      originalAmount: {Amount, :t},
      reason:
        {:enum,
         [
           "accountHierarchyNotActive",
           "amountLimitExceeded",
           "approvalExpired",
           "approved",
           "avsDeclined",
           "balanceAccountTemporarilyBlockedByTransactionRule",
           "blockCard",
           "callReferral",
           "cancelled",
           "captureCard",
           "cardExpired",
           "cardholderAuthenticationRequired",
           "cashbackAmountExceedsLimit",
           "cavvDeclined",
           "contactlessFallback",
           "contactlessLimitReached",
           "counterpartyAccountBlocked",
           "counterpartyAccountClosed",
           "counterpartyAccountNotFound",
           "counterpartyAddressRequired",
           "counterpartyBankTimedOut",
           "counterpartyBankUnavailable",
           "cryptographicFailure",
           "cvcDeclined",
           "declined",
           "declinedByBapValidation",
           "declinedByTransactionRule",
           "declinedNonGeneric",
           "directDebitNotSupported",
           "doNotHonor",
           "domesticDebitTransactionNotAllowed",
           "duplicateTransmissionDetected",
           "error",
           "formatError",
           "fraud",
           "fraudCancelled",
           "honorWithId",
           "internalTimeout",
           "invalidAccount",
           "invalidAmount",
           "invalidAuthorizationLifeCycle",
           "invalidCard",
           "invalidExpiryDate",
           "invalidFromAccount",
           "invalidIssuer",
           "invalidMerchant",
           "invalidPin",
           "invalidToAccount",
           "invalidTransaction",
           "issuerSuspectedFraud",
           "lostCard",
           "mobilePinRequired",
           "noCheckingAccount",
           "noSavingsAccount",
           "not3dAuthenticated",
           "notEnoughBalance",
           "notSubmitted",
           "notSupported",
           "partiallyApproved",
           "pending",
           "pendingApproval",
           "pendingExecution",
           "pinNotChanged",
           "pinRequired",
           "pinTriesExceeded",
           "pinValidationNotPossible",
           "purchaseAmountOnlyNoCashBack",
           "refusedByCounterpartyBank",
           "refusedByCustomer",
           "restrictedCard",
           "revocationOfAuth",
           "routeNotFound",
           "scaAuthenticationRequired",
           "scaFailed",
           "schemeAdvice",
           "securityViolation",
           "shopperCancelled",
           "stolenCard",
           "threedsDynamicLinkingMismatch",
           "transactionNotPermitted",
           "transferInstrumentDoesNotExist",
           "unableToRouteTransaction",
           "unknown",
           "withdrawalAmountExceeded",
           "withdrawalCountExceeded"
         ]},
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
      trackingData:
        {:union,
         [
           {ConfirmationTrackingData, :t},
           {EstimationTrackingData, :t},
           {InternalReviewTrackingData, :t}
         ]},
      transactionId: :string,
      type: {:enum, ["accounting", "tracking"]},
      updateDate: {:string, "date-time"},
      valueDate: {:string, "date-time"}
    ]
  end
end
