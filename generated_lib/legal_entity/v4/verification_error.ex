defmodule Adyen.LegalEntity.V4.VerificationError do
  @moduledoc """
  Provides struct and type for a VerificationError
  """

  @type t :: %__MODULE__{
          capabilities: [String.t()] | nil,
          code: String.t() | nil,
          message: String.t() | nil,
          remediatingActions: [Adyen.LegalEntity.V4.RemediatingAction.t()] | nil,
          subErrors: [Adyen.LegalEntity.V4.VerificationErrorRecursive.t()] | nil,
          type: String.t() | nil
        }

  defstruct [:capabilities, :code, :message, :remediatingActions, :subErrors, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: [
        enum: [
          "acceptExternalFunding",
          "acceptPspFunding",
          "acceptTransactionInRestrictedCountries",
          "acceptTransactionInRestrictedCountriesCommercial",
          "acceptTransactionInRestrictedCountriesConsumer",
          "acceptTransactionInRestrictedIndustries",
          "acceptTransactionInRestrictedIndustriesCommercial",
          "acceptTransactionInRestrictedIndustriesConsumer",
          "acquiring",
          "atmWithdrawal",
          "atmWithdrawalCommercial",
          "atmWithdrawalConsumer",
          "atmWithdrawalInRestrictedCountries",
          "atmWithdrawalInRestrictedCountriesCommercial",
          "atmWithdrawalInRestrictedCountriesConsumer",
          "authorisedPaymentInstrumentUser",
          "getGrantOffers",
          "issueBankAccount",
          "issueCard",
          "issueCardCommercial",
          "issueCardConsumer",
          "issueChargeCard",
          "issueChargeCardCommercial",
          "issueCreditLimit",
          "localAcceptance",
          "payout",
          "payoutToTransferInstrument",
          "processing",
          "receiveFromBalanceAccount",
          "receiveFromPlatformPayments",
          "receiveFromThirdParty",
          "receiveFromTransferInstrument",
          "receiveGrants",
          "receivePayments",
          "sendToBalanceAccount",
          "sendToThirdParty",
          "sendToTransferInstrument",
          "thirdPartyFunding",
          "useCard",
          "useCardCommercial",
          "useCardConsumer",
          "useCardInRestrictedCountries",
          "useCardInRestrictedCountriesCommercial",
          "useCardInRestrictedCountriesConsumer",
          "useCardInRestrictedIndustries",
          "useCardInRestrictedIndustriesCommercial",
          "useCardInRestrictedIndustriesConsumer",
          "useChargeCard",
          "useChargeCardCommercial",
          "withdrawFromAtm",
          "withdrawFromAtmCommercial",
          "withdrawFromAtmConsumer",
          "withdrawFromAtmInRestrictedCountries",
          "withdrawFromAtmInRestrictedCountriesCommercial",
          "withdrawFromAtmInRestrictedCountriesConsumer"
        ]
      ],
      code: :string,
      message: :string,
      remediatingActions: [{Adyen.LegalEntity.V4.RemediatingAction, :t}],
      subErrors: [{Adyen.LegalEntity.V4.VerificationErrorRecursive, :t}],
      type: {:enum, ["dataMissing", "dataReview", "invalidInput", "pendingStatus", "rejected"]}
    ]
  end
end
