defmodule Adyen.LegalEntity.TaxReportingClassification do
  @moduledoc """
  Provides struct and type for a TaxReportingClassification
  """

  @type t :: %__MODULE__{
          businessType: String.t() | nil,
          financialInstitutionNumber: String.t() | nil,
          mainSourceOfIncome: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:businessType, :financialInstitutionNumber, :mainSourceOfIncome, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      businessType:
        {:enum,
         [
           "other",
           "listedPublicCompany",
           "subsidiaryOfListedPublicCompany",
           "governmentalOrganization",
           "internationalOrganization",
           "financialInstitution"
         ]},
      financialInstitutionNumber: :string,
      mainSourceOfIncome:
        {:enum,
         [
           "businessOperation",
           "realEstateSales",
           "investmentInterestOrRoyalty",
           "propertyRental",
           "other"
         ]},
      type:
        {:enum,
         [
           "nonFinancialNonReportable",
           "financialNonReportable",
           "nonFinancialActive",
           "nonFinancialPassive"
         ]}
    ]
  end
end
