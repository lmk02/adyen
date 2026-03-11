defmodule Adyen.LegalEntity.V1.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          email: String.t() | nil,
          legalName: String.t(),
          phone: Adyen.LegalEntity.V1.PhoneNumber.t() | nil,
          principalPlaceOfBusiness: Adyen.LegalEntity.V1.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V1.Address.t(),
          registrationNumber: String.t() | nil,
          stockData: Adyen.LegalEntity.V1.StockData.t() | nil,
          taxExempt: boolean | nil,
          taxId: String.t() | nil,
          taxIdAbsenceReason: String.t() | nil,
          type: String.t() | nil,
          webData: Adyen.LegalEntity.V1.WebData.t() | nil
        }

  defstruct [
    :description,
    :doingBusinessAs,
    :email,
    :legalName,
    :phone,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :stockData,
    :taxExempt,
    :taxId,
    :taxIdAbsenceReason,
    :type,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      doingBusinessAs: :string,
      email: :string,
      legalName: :string,
      phone: {Adyen.LegalEntity.V1.PhoneNumber, :t},
      principalPlaceOfBusiness: {Adyen.LegalEntity.V1.Address, :t},
      registeredAddress: {Adyen.LegalEntity.V1.Address, :t},
      registrationNumber: :string,
      stockData: {Adyen.LegalEntity.V1.StockData, :t},
      taxExempt: :boolean,
      taxId: :string,
      taxIdAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
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
      webData: {Adyen.LegalEntity.V1.WebData, :t}
    ]
  end
end
