defmodule Adyen.Funds.Transaction do
  @moduledoc """
  Provides struct and type for a Transaction
  """

  @type t :: %__MODULE__{
          amount: Adyen.Funds.Amount.t() | nil,
          bankAccountDetail: Adyen.Funds.BankAccountDetail.t() | nil,
          captureMerchantReference: String.t() | nil,
          capturePspReference: String.t() | nil,
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          destinationAccountCode: String.t() | nil,
          disputePspReference: String.t() | nil,
          disputeReasonCode: String.t() | nil,
          merchantReference: String.t() | nil,
          paymentPspReference: String.t() | nil,
          payoutPspReference: String.t() | nil,
          pspReference: String.t() | nil,
          sourceAccountCode: String.t() | nil,
          transactionStatus: String.t() | nil,
          transferCode: String.t() | nil
        }

  defstruct [
    :amount,
    :bankAccountDetail,
    :captureMerchantReference,
    :capturePspReference,
    :creationDate,
    :description,
    :destinationAccountCode,
    :disputePspReference,
    :disputeReasonCode,
    :merchantReference,
    :paymentPspReference,
    :payoutPspReference,
    :pspReference,
    :sourceAccountCode,
    :transactionStatus,
    :transferCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Funds.Amount, :t},
      bankAccountDetail: {Adyen.Funds.BankAccountDetail, :t},
      captureMerchantReference: :string,
      capturePspReference: :string,
      creationDate: {:string, "date-time"},
      description: :string,
      destinationAccountCode: :string,
      disputePspReference: :string,
      disputeReasonCode: :string,
      merchantReference: :string,
      paymentPspReference: :string,
      payoutPspReference: :string,
      pspReference: :string,
      sourceAccountCode: :string,
      transactionStatus:
        {:enum,
         [
           "BalanceNotPaidOutTransfer",
           "BalancePlatformFundTransfer",
           "BalancePlatformSweep",
           "BalancePlatformSweepReturned",
           "Chargeback",
           "ChargebackCorrection",
           "ChargebackCorrectionReceived",
           "ChargebackReceived",
           "ChargebackReversed",
           "ChargebackReversedCorrection",
           "ChargebackReversedCorrectionReceived",
           "ChargebackReversedReceived",
           "Converted",
           "CreditClosed",
           "CreditFailed",
           "CreditReversed",
           "CreditReversedReceived",
           "CreditSuspended",
           "Credited",
           "DebitFailed",
           "DebitReversedReceived",
           "Debited",
           "DebitedReversed",
           "DepositCorrectionCredited",
           "DepositCorrectionDebited",
           "DepositCorrectionReceived",
           "Fee",
           "FeeReceived",
           "FundTransfer",
           "FundTransferReversed",
           "InvoiceDeductionCredited",
           "InvoiceDeductionDebited",
           "InvoiceDeductionReceived",
           "ManualCorrected",
           "ManualCorrectionCredited",
           "ManualCorrectionDebited",
           "MerchantPayin",
           "MerchantPayinReceived",
           "MerchantPayinReversed",
           "Payout",
           "PayoutReversed",
           "PendingCredit",
           "PendingDebit",
           "PendingFundTransfer",
           "ReCredited",
           "ReCreditedReceived",
           "SecondChargeback",
           "SecondChargebackCorrection",
           "SecondChargebackCorrectionReceived",
           "SecondChargebackReceived"
         ]},
      transferCode: :string
    ]
  end
end
