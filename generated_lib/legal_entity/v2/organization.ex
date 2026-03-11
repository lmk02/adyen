defmodule Adyen.LegalEntity.V2.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t() | nil,
          dateOfIncorporation: String.t() | nil,
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          email: String.t() | nil,
          legalName: String.t(),
          phone: Adyen.LegalEntity.V2.PhoneNumber.t() | nil,
          principalPlaceOfBusiness: Adyen.LegalEntity.V2.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V2.Address.t(),
          registrationNumber: String.t() | nil,
          stockData: Adyen.LegalEntity.V2.StockData.t() | nil,
          taxInformation: [Adyen.LegalEntity.V2.TaxInformation.t()] | nil,
          taxReportingClassification: Adyen.LegalEntity.V2.TaxReportingClassification.t() | nil,
          type: String.t() | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil,
          webData: Adyen.LegalEntity.V2.WebData.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :description,
    :doingBusinessAs,
    :email,
    :legalName,
    :phone,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
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
      description: :string,
      doingBusinessAs: :string,
      email: :string,
      legalName: :string,
      phone: {Adyen.LegalEntity.V2.PhoneNumber, :t},
      principalPlaceOfBusiness: {Adyen.LegalEntity.V2.Address, :t},
      registeredAddress: {Adyen.LegalEntity.V2.Address, :t},
      registrationNumber: :string,
      stockData: {Adyen.LegalEntity.V2.StockData, :t},
      taxInformation: [{Adyen.LegalEntity.V2.TaxInformation, :t}],
      taxReportingClassification: {Adyen.LegalEntity.V2.TaxReportingClassification, :t},
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
      webData: {Adyen.LegalEntity.V2.WebData, :t}
    ]
  end
end
