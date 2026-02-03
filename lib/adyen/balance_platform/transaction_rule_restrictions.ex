defmodule Adyen.BalancePlatform.TransactionRuleRestrictions do
  @moduledoc """
  Provides struct and type for a TransactionRuleRestrictions
  """

  alias Adyen.BalancePlatform.ActiveNetworkTokensRestriction
  alias Adyen.BalancePlatform.BrandVariantsRestriction
  alias Adyen.BalancePlatform.CounterpartyBankRestriction
  alias Adyen.BalancePlatform.CounterpartyTypesRestriction
  alias Adyen.BalancePlatform.CountriesRestriction
  alias Adyen.BalancePlatform.DayOfWeekRestriction
  alias Adyen.BalancePlatform.DifferentCurrenciesRestriction
  alias Adyen.BalancePlatform.EntryModesRestriction
  alias Adyen.BalancePlatform.InternationalTransactionRestriction
  alias Adyen.BalancePlatform.MatchingTransactionsRestriction
  alias Adyen.BalancePlatform.MatchingValuesRestriction
  alias Adyen.BalancePlatform.MccsRestriction
  alias Adyen.BalancePlatform.MerchantNamesRestriction
  alias Adyen.BalancePlatform.MerchantsRestriction
  alias Adyen.BalancePlatform.ProcessingTypesRestriction
  alias Adyen.BalancePlatform.RiskScoresRestriction
  alias Adyen.BalancePlatform.SameAmountRestriction
  alias Adyen.BalancePlatform.SameCounterpartyRestriction
  alias Adyen.BalancePlatform.SourceAccountTypesRestriction
  alias Adyen.BalancePlatform.TimeOfDayRestriction
  alias Adyen.BalancePlatform.TokenRequestorsRestriction
  alias Adyen.BalancePlatform.TotalAmountRestriction
  alias Adyen.BalancePlatform.WalletProviderAccountScoreRestriction
  alias Adyen.BalancePlatform.WalletProviderDeviceScore
  alias Adyen.BalancePlatform.WalletProviderDeviceType

  @type t :: %__MODULE__{
          activeNetworkTokens: ActiveNetworkTokensRestriction.t() | nil,
          brandVariants: BrandVariantsRestriction.t() | nil,
          counterpartyBank: CounterpartyBankRestriction.t() | nil,
          counterpartyTypes: CounterpartyTypesRestriction.t() | nil,
          countries: CountriesRestriction.t() | nil,
          dayOfWeek: DayOfWeekRestriction.t() | nil,
          differentCurrencies: DifferentCurrenciesRestriction.t() | nil,
          entryModes: EntryModesRestriction.t() | nil,
          internationalTransaction: InternationalTransactionRestriction.t() | nil,
          matchingTransactions: MatchingTransactionsRestriction.t() | nil,
          matchingValues: MatchingValuesRestriction.t() | nil,
          mccs: MccsRestriction.t() | nil,
          merchantNames: MerchantNamesRestriction.t() | nil,
          merchants: MerchantsRestriction.t() | nil,
          processingTypes: ProcessingTypesRestriction.t() | nil,
          riskScores: RiskScoresRestriction.t() | nil,
          sameAmountRestriction: SameAmountRestriction.t() | nil,
          sameCounterpartyRestriction: SameCounterpartyRestriction.t() | nil,
          sourceAccountTypes: SourceAccountTypesRestriction.t() | nil,
          timeOfDay: TimeOfDayRestriction.t() | nil,
          tokenRequestors: TokenRequestorsRestriction.t() | nil,
          totalAmount: TotalAmountRestriction.t() | nil,
          walletProviderAccountScore: WalletProviderAccountScoreRestriction.t() | nil,
          walletProviderDeviceScore: WalletProviderDeviceScore.t() | nil,
          walletProviderDeviceType: WalletProviderDeviceType.t() | nil
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
      activeNetworkTokens: {ActiveNetworkTokensRestriction, :t},
      brandVariants: {BrandVariantsRestriction, :t},
      counterpartyBank: {CounterpartyBankRestriction, :t},
      counterpartyTypes: {CounterpartyTypesRestriction, :t},
      countries: {CountriesRestriction, :t},
      dayOfWeek: {DayOfWeekRestriction, :t},
      differentCurrencies: {DifferentCurrenciesRestriction, :t},
      entryModes: {EntryModesRestriction, :t},
      internationalTransaction: {InternationalTransactionRestriction, :t},
      matchingTransactions: {MatchingTransactionsRestriction, :t},
      matchingValues: {MatchingValuesRestriction, :t},
      mccs: {MccsRestriction, :t},
      merchantNames: {MerchantNamesRestriction, :t},
      merchants: {MerchantsRestriction, :t},
      processingTypes: {ProcessingTypesRestriction, :t},
      riskScores: {RiskScoresRestriction, :t},
      sameAmountRestriction: {SameAmountRestriction, :t},
      sameCounterpartyRestriction: {SameCounterpartyRestriction, :t},
      sourceAccountTypes: {SourceAccountTypesRestriction, :t},
      timeOfDay: {TimeOfDayRestriction, :t},
      tokenRequestors: {TokenRequestorsRestriction, :t},
      totalAmount: {TotalAmountRestriction, :t},
      walletProviderAccountScore: {WalletProviderAccountScoreRestriction, :t},
      walletProviderDeviceScore: {WalletProviderDeviceScore, :t},
      walletProviderDeviceType: {WalletProviderDeviceType, :t}
    ]
  end
end
