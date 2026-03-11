defmodule Adyen.Account.V6.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Account.V6.KYCCheckResult.t() | nil,
          legalArrangements: [Adyen.Account.V6.KYCLegalArrangementCheckResult.t()] | nil,
          legalArrangementsEntities:
            [Adyen.Account.V6.KYCLegalArrangementEntityCheckResult.t()] | nil,
          payoutMethods: [Adyen.Account.V6.KYCPayoutMethodCheckResult.t()] | nil,
          shareholders: [Adyen.Account.V6.KYCShareholderCheckResult.t()] | nil,
          signatories: [Adyen.Account.V6.KYCSignatoryCheckResult.t()] | nil,
          ultimateParentCompany: [Adyen.Account.V6.KYCUltimateParentCompanyCheckResult.t()] | nil
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
      accountHolder: {Adyen.Account.V6.KYCCheckResult, :t},
      legalArrangements: [{Adyen.Account.V6.KYCLegalArrangementCheckResult, :t}],
      legalArrangementsEntities: [{Adyen.Account.V6.KYCLegalArrangementEntityCheckResult, :t}],
      payoutMethods: [{Adyen.Account.V6.KYCPayoutMethodCheckResult, :t}],
      shareholders: [{Adyen.Account.V6.KYCShareholderCheckResult, :t}],
      signatories: [{Adyen.Account.V6.KYCSignatoryCheckResult, :t}],
      ultimateParentCompany: [{Adyen.Account.V6.KYCUltimateParentCompanyCheckResult, :t}]
    ]
  end
end
