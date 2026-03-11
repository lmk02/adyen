defmodule Adyen.Accounts.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Accounts.KYCCheckResult.t() | nil,
          legalArrangements: [Adyen.Accounts.KYCLegalArrangementCheckResult.t()] | nil,
          legalArrangementsEntities:
            [Adyen.Accounts.KYCLegalArrangementEntityCheckResult.t()] | nil,
          payoutMethods: [Adyen.Accounts.KYCPayoutMethodCheckResult.t()] | nil,
          shareholders: [Adyen.Accounts.KYCShareholderCheckResult.t()] | nil,
          signatories: [Adyen.Accounts.KYCSignatoryCheckResult.t()] | nil,
          ultimateParentCompany: [Adyen.Accounts.KYCUltimateParentCompanyCheckResult.t()] | nil
        }

  defstruct [
    :accountHolder,
    :legalArrangements,
    :legalArrangementsEntities,
    :payoutMethods,
    :shareholders,
    :signatories,
    :ultimateParentCompany
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Accounts.KYCCheckResult, :t},
      legalArrangements: [{Adyen.Accounts.KYCLegalArrangementCheckResult, :t}],
      legalArrangementsEntities: [{Adyen.Accounts.KYCLegalArrangementEntityCheckResult, :t}],
      payoutMethods: [{Adyen.Accounts.KYCPayoutMethodCheckResult, :t}],
      shareholders: [{Adyen.Accounts.KYCShareholderCheckResult, :t}],
      signatories: [{Adyen.Accounts.KYCSignatoryCheckResult, :t}],
      ultimateParentCompany: [{Adyen.Accounts.KYCUltimateParentCompanyCheckResult, :t}]
    ]
  end
end
