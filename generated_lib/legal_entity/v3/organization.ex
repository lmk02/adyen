defmodule Adyen.LegalEntity.V3.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t() | nil,
          dateOfIncorporation: String.t() | nil,
          dateOfInitiationOfLegalProceeding: String.t() | nil,
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          economicSector: String.t() | nil,
          email: String.t() | nil,
          financialReports: [Adyen.LegalEntity.V3.FinancialReport.t()] | nil,
          globalLegalEntityIdentifier: String.t() | nil,
          headOfficeIndicator: boolean | nil,
          institutionalSector: String.t() | nil,
          legalForm: String.t() | nil,
          legalName: String.t(),
          phone: Adyen.LegalEntity.V3.PhoneNumber.t() | nil,
          principalPlaceOfBusiness: Adyen.LegalEntity.V3.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V3.Address.t(),
          registrationNumber: String.t() | nil,
          statusOfLegalProceeding: String.t() | nil,
          stockData: Adyen.LegalEntity.V3.StockData.t() | nil,
          taxInformation: [Adyen.LegalEntity.V3.TaxInformation.t()] | nil,
          taxReportingClassification: Adyen.LegalEntity.V3.TaxReportingClassification.t() | nil,
          type: String.t() | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil,
          webData: Adyen.LegalEntity.V3.WebData.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :dateOfInitiationOfLegalProceeding,
    :description,
    :doingBusinessAs,
    :economicSector,
    :email,
    :financialReports,
    :globalLegalEntityIdentifier,
    :headOfficeIndicator,
    :institutionalSector,
    :legalForm,
    :legalName,
    :phone,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :statusOfLegalProceeding,
    :stockData,
    :taxInformation,
    :taxReportingClassification,
    :type,
    :vatAbsenceReason,
    :vatNumber,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      countryOfGoverningLaw: :string,
      dateOfIncorporation: :string,
      dateOfInitiationOfLegalProceeding: :string,
      description: :string,
      doingBusinessAs: :string,
      economicSector: :string,
      email: :string,
      financialReports: [{Adyen.LegalEntity.V3.FinancialReport, :t}],
      globalLegalEntityIdentifier: :string,
      headOfficeIndicator: :boolean,
      institutionalSector:
        {:enum,
         [
           "nonFinancialCorporation",
           "centralBank",
           "creditInstitutions",
           "depositTakingCorporations",
           "moneyMarketFunds",
           "nonMMFInvestmentFunds",
           "financialVehicleCorporation",
           "otherFinancialIntermediaries",
           "financialAuxiliaries",
           "captiveFinancialInstitutionsAndMoneyLenders",
           "insuranceCorporations",
           "pensionFunds",
           "centralGovernment",
           "stateGovernment",
           "localGovernment",
           "socialSecurityFunds",
           "nonProfitInstitutionsServingHouseholds"
         ]},
      legalForm: :string,
      legalName: :string,
      phone: {Adyen.LegalEntity.V3.PhoneNumber, :t},
      principalPlaceOfBusiness: {Adyen.LegalEntity.V3.Address, :t},
      registeredAddress: {Adyen.LegalEntity.V3.Address, :t},
      registrationNumber: :string,
      statusOfLegalProceeding:
        {:enum,
         [
           "noLegalActionsTaken",
           "underJudicialAdministration",
           "bankruptcyInsolvency",
           "otherLegalMeasures"
         ]},
      stockData: {Adyen.LegalEntity.V3.StockData, :t},
      taxInformation: [{Adyen.LegalEntity.V3.TaxInformation, :t}],
      taxReportingClassification: {Adyen.LegalEntity.V3.TaxReportingClassification, :t},
      type:
        {:enum,
         [
           "associationIncorporated",
           "governmentalOrganization",
           "listedPublicCompany",
           "nonProfit",
           "partnershipIncorporated",
           "privateCompany"
         ]},
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string,
      webData: {Adyen.LegalEntity.V3.WebData, :t}
    ]
  end
end
