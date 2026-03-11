defmodule Adyen.LegalEntity.V3.VerificationDeadline do
  @moduledoc """
  Provides struct and type for a VerificationDeadline
  """

  @type t :: %__MODULE__{
          capabilities: [String.t()],
          entityIds: [String.t()] | nil,
          expiresAt: DateTime.t()
        }

  defstruct [:capabilities, :entityIds, :expiresAt]

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
      entityIds: [:string],
      expiresAt: {:string, "date-time"}
    ]
  end
end
