defmodule Adyen.LegalEntity.V1.Trust do
  @moduledoc """
  Provides struct and type for a Trust
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          doingBusinessAs: String.t() | nil,
          name: String.t(),
          principalPlaceOfBusiness: Adyen.LegalEntity.V1.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V1.Address.t(),
          registrationNumber: String.t() | nil,
          type: String.t(),
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :doingBusinessAs,
    :name,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :type,
    :vatAbsenceReason,
    :vatNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      countryOfGoverningLaw: :string,
      doingBusinessAs: :string,
      name: :string,
      principalPlaceOfBusiness: {Adyen.LegalEntity.V1.Address, :t},
      registeredAddress: {Adyen.LegalEntity.V1.Address, :t},
      registrationNumber: :string,
      type:
        {:enum,
         [
           "businessTrust",
           "cashManagementTrust",
           "charitableTrust",
           "corporateUnitTrust",
           "deceasedEstate",
           "discretionaryTrust",
           "discretionaryInvestmentTrust",
           "discretionaryServicesManagementTrust",
           "discretionaryTradingTrust",
           "familyTrust",
           "firstHomeSaverAccountsTrust",
           "fixedTrust",
           "fixedUnitTrust",
           "hybridTrust",
           "listedPublicUnitTrust",
           "otherTrust",
           "pooledSuperannuationTrust",
           "publicTradingTrust",
           "unlistedPublicUnitTrust"
         ]},
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string
    ]
  end
end
