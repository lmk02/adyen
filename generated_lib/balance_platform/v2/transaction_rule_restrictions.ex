defmodule Adyen.BalancePlatform.V2.TransactionRuleRestrictions do
  @moduledoc """
  Provides struct and type for a TransactionRuleRestrictions
  """

  @type t :: %__MODULE__{
          activeNetworkTokens: Adyen.BalancePlatform.V2.ActiveNetworkTokensRestriction.t() | nil,
          brandVariants: Adyen.BalancePlatform.V2.BrandVariantsRestriction.t() | nil,
          counterpartyBank: Adyen.BalancePlatform.V2.CounterpartyBankRestriction.t() | nil,
          counterpartyTypes: Adyen.BalancePlatform.V2.CounterpartyTypesRestriction.t() | nil,
          countries: Adyen.BalancePlatform.V2.CountriesRestriction.t() | nil,
          dayOfWeek: Adyen.BalancePlatform.V2.DayOfWeekRestriction.t() | nil,
          differentCurrencies: Adyen.BalancePlatform.V2.DifferentCurrenciesRestriction.t() | nil,
          entryModes: Adyen.BalancePlatform.V2.EntryModesRestriction.t() | nil,
          internationalTransaction:
            Adyen.BalancePlatform.V2.InternationalTransactionRestriction.t() | nil,
          matchingTransactions:
            Adyen.BalancePlatform.V2.MatchingTransactionsRestriction.t() | nil,
          matchingValues: Adyen.BalancePlatform.V2.MatchingValuesRestriction.t() | nil,
          mccs: Adyen.BalancePlatform.V2.MccsRestriction.t() | nil,
          merchantNames: Adyen.BalancePlatform.V2.MerchantNamesRestriction.t() | nil,
          merchants: Adyen.BalancePlatform.V2.MerchantsRestriction.t() | nil,
          processingTypes: Adyen.BalancePlatform.V2.ProcessingTypesRestriction.t() | nil,
          riskScores: Adyen.BalancePlatform.V2.RiskScoresRestriction.t() | nil,
          sameAmountRestriction: Adyen.BalancePlatform.V2.SameAmountRestriction.t() | nil,
          sameCounterpartyRestriction:
            Adyen.BalancePlatform.V2.SameCounterpartyRestriction.t() | nil,
          sourceAccountTypes: Adyen.BalancePlatform.V2.SourceAccountTypesRestriction.t() | nil,
          timeOfDay: Adyen.BalancePlatform.V2.TimeOfDayRestriction.t() | nil,
          tokenRequestors: Adyen.BalancePlatform.V2.TokenRequestorsRestriction.t() | nil,
          totalAmount: Adyen.BalancePlatform.V2.TotalAmountRestriction.t() | nil,
          walletProviderAccountScore:
            Adyen.BalancePlatform.V2.WalletProviderAccountScoreRestriction.t() | nil,
          walletProviderDeviceScore: Adyen.BalancePlatform.V2.WalletProviderDeviceScore.t() | nil,
          walletProviderDeviceType: Adyen.BalancePlatform.V2.WalletProviderDeviceType.t() | nil
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
      activeNetworkTokens: {Adyen.BalancePlatform.V2.ActiveNetworkTokensRestriction, :t},
      brandVariants: {Adyen.BalancePlatform.V2.BrandVariantsRestriction, :t},
      counterpartyBank: {Adyen.BalancePlatform.V2.CounterpartyBankRestriction, :t},
      counterpartyTypes: {Adyen.BalancePlatform.V2.CounterpartyTypesRestriction, :t},
      countries: {Adyen.BalancePlatform.V2.CountriesRestriction, :t},
      dayOfWeek: {Adyen.BalancePlatform.V2.DayOfWeekRestriction, :t},
      differentCurrencies: {Adyen.BalancePlatform.V2.DifferentCurrenciesRestriction, :t},
      entryModes: {Adyen.BalancePlatform.V2.EntryModesRestriction, :t},
      internationalTransaction:
        {Adyen.BalancePlatform.V2.InternationalTransactionRestriction, :t},
      matchingTransactions: {Adyen.BalancePlatform.V2.MatchingTransactionsRestriction, :t},
      matchingValues: {Adyen.BalancePlatform.V2.MatchingValuesRestriction, :t},
      mccs: {Adyen.BalancePlatform.V2.MccsRestriction, :t},
      merchantNames: {Adyen.BalancePlatform.V2.MerchantNamesRestriction, :t},
      merchants: {Adyen.BalancePlatform.V2.MerchantsRestriction, :t},
      processingTypes: {Adyen.BalancePlatform.V2.ProcessingTypesRestriction, :t},
      riskScores: {Adyen.BalancePlatform.V2.RiskScoresRestriction, :t},
      sameAmountRestriction: {Adyen.BalancePlatform.V2.SameAmountRestriction, :t},
      sameCounterpartyRestriction: {Adyen.BalancePlatform.V2.SameCounterpartyRestriction, :t},
      sourceAccountTypes: {Adyen.BalancePlatform.V2.SourceAccountTypesRestriction, :t},
      timeOfDay: {Adyen.BalancePlatform.V2.TimeOfDayRestriction, :t},
      tokenRequestors: {Adyen.BalancePlatform.V2.TokenRequestorsRestriction, :t},
      totalAmount: {Adyen.BalancePlatform.V2.TotalAmountRestriction, :t},
      walletProviderAccountScore:
        {Adyen.BalancePlatform.V2.WalletProviderAccountScoreRestriction, :t},
      walletProviderDeviceScore: {Adyen.BalancePlatform.V2.WalletProviderDeviceScore, :t},
      walletProviderDeviceType: {Adyen.BalancePlatform.V2.WalletProviderDeviceType, :t}
    ]
  end
end
