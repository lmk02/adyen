defmodule Adyen.BalancePlatform.TransactionRuleRestrictions do
  @moduledoc """
  Provides struct and type for a TransactionRuleRestrictions
  """

  @type t :: %__MODULE__{
          activeNetworkTokens: Adyen.BalancePlatform.ActiveNetworkTokensRestriction.t() | nil,
          brandVariants: Adyen.BalancePlatform.BrandVariantsRestriction.t() | nil,
          counterpartyBank: Adyen.BalancePlatform.CounterpartyBankRestriction.t() | nil,
          counterpartyTypes: Adyen.BalancePlatform.CounterpartyTypesRestriction.t() | nil,
          countries: Adyen.BalancePlatform.CountriesRestriction.t() | nil,
          dayOfWeek: Adyen.BalancePlatform.DayOfWeekRestriction.t() | nil,
          differentCurrencies: Adyen.BalancePlatform.DifferentCurrenciesRestriction.t() | nil,
          entryModes: Adyen.BalancePlatform.EntryModesRestriction.t() | nil,
          internationalTransaction:
            Adyen.BalancePlatform.InternationalTransactionRestriction.t() | nil,
          matchingTransactions: Adyen.BalancePlatform.MatchingTransactionsRestriction.t() | nil,
          matchingValues: Adyen.BalancePlatform.MatchingValuesRestriction.t() | nil,
          mccs: Adyen.BalancePlatform.MccsRestriction.t() | nil,
          merchantNames: Adyen.BalancePlatform.MerchantNamesRestriction.t() | nil,
          merchants: Adyen.BalancePlatform.MerchantsRestriction.t() | nil,
          processingTypes: Adyen.BalancePlatform.ProcessingTypesRestriction.t() | nil,
          riskScores: Adyen.BalancePlatform.RiskScoresRestriction.t() | nil,
          sameAmountRestriction: Adyen.BalancePlatform.SameAmountRestriction.t() | nil,
          sameCounterpartyRestriction:
            Adyen.BalancePlatform.SameCounterpartyRestriction.t() | nil,
          sourceAccountTypes: Adyen.BalancePlatform.SourceAccountTypesRestriction.t() | nil,
          timeOfDay: Adyen.BalancePlatform.TimeOfDayRestriction.t() | nil,
          tokenRequestors: Adyen.BalancePlatform.TokenRequestorsRestriction.t() | nil,
          totalAmount: Adyen.BalancePlatform.TotalAmountRestriction.t() | nil,
          walletProviderAccountScore:
            Adyen.BalancePlatform.WalletProviderAccountScoreRestriction.t() | nil,
          walletProviderDeviceScore: Adyen.BalancePlatform.WalletProviderDeviceScore.t() | nil,
          walletProviderDeviceType: Adyen.BalancePlatform.WalletProviderDeviceType.t() | nil
        }

  defstruct [
    :activeNetworkTokens,
    :brandVariants,
    :counterpartyBank,
    :counterpartyTypes,
    :countries,
    :dayOfWeek,
    :differentCurrencies,
    :entryModes,
    :internationalTransaction,
    :matchingTransactions,
    :matchingValues,
    :mccs,
    :merchantNames,
    :merchants,
    :processingTypes,
    :riskScores,
    :sameAmountRestriction,
    :sameCounterpartyRestriction,
    :sourceAccountTypes,
    :timeOfDay,
    :tokenRequestors,
    :totalAmount,
    :walletProviderAccountScore,
    :walletProviderDeviceScore,
    :walletProviderDeviceType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      activeNetworkTokens: {Adyen.BalancePlatform.ActiveNetworkTokensRestriction, :t},
      brandVariants: {Adyen.BalancePlatform.BrandVariantsRestriction, :t},
      counterpartyBank: {Adyen.BalancePlatform.CounterpartyBankRestriction, :t},
      counterpartyTypes: {Adyen.BalancePlatform.CounterpartyTypesRestriction, :t},
      countries: {Adyen.BalancePlatform.CountriesRestriction, :t},
      dayOfWeek: {Adyen.BalancePlatform.DayOfWeekRestriction, :t},
      differentCurrencies: {Adyen.BalancePlatform.DifferentCurrenciesRestriction, :t},
      entryModes: {Adyen.BalancePlatform.EntryModesRestriction, :t},
      internationalTransaction: {Adyen.BalancePlatform.InternationalTransactionRestriction, :t},
      matchingTransactions: {Adyen.BalancePlatform.MatchingTransactionsRestriction, :t},
      matchingValues: {Adyen.BalancePlatform.MatchingValuesRestriction, :t},
      mccs: {Adyen.BalancePlatform.MccsRestriction, :t},
      merchantNames: {Adyen.BalancePlatform.MerchantNamesRestriction, :t},
      merchants: {Adyen.BalancePlatform.MerchantsRestriction, :t},
      processingTypes: {Adyen.BalancePlatform.ProcessingTypesRestriction, :t},
      riskScores: {Adyen.BalancePlatform.RiskScoresRestriction, :t},
      sameAmountRestriction: {Adyen.BalancePlatform.SameAmountRestriction, :t},
      sameCounterpartyRestriction: {Adyen.BalancePlatform.SameCounterpartyRestriction, :t},
      sourceAccountTypes: {Adyen.BalancePlatform.SourceAccountTypesRestriction, :t},
      timeOfDay: {Adyen.BalancePlatform.TimeOfDayRestriction, :t},
      tokenRequestors: {Adyen.BalancePlatform.TokenRequestorsRestriction, :t},
      totalAmount: {Adyen.BalancePlatform.TotalAmountRestriction, :t},
      walletProviderAccountScore:
        {Adyen.BalancePlatform.WalletProviderAccountScoreRestriction, :t},
      walletProviderDeviceScore: {Adyen.BalancePlatform.WalletProviderDeviceScore, :t},
      walletProviderDeviceType: {Adyen.BalancePlatform.WalletProviderDeviceType, :t}
    ]
  end
end
