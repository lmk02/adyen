defmodule Adyen.Funds.AccountHolderTransactionListRequest do
  @moduledoc """
  Provides struct and type for a AccountHolderTransactionListRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          transactionListsPerAccount: [Adyen.Funds.TransactionListForAccount.t()] | nil,
          transactionStatuses: [String.t()] | nil
        }

  defstruct [:accountHolderCode, :transactionListsPerAccount, :transactionStatuses]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      transactionListsPerAccount: [{Adyen.Funds.TransactionListForAccount, :t}],
      transactionStatuses: [
        enum: [
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
        ]
      ]
    ]
  end
end
