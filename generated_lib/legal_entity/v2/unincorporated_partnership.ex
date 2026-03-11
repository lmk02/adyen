defmodule Adyen.LegalEntity.V2.UnincorporatedPartnership do
  @moduledoc """
  Provides struct and type for a UnincorporatedPartnership
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          dateOfIncorporation: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          name: String.t(),
          principalPlaceOfBusiness: Adyen.LegalEntity.V2.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V2.Address.t(),
          registrationNumber: String.t() | nil,
          taxInformation: [Adyen.LegalEntity.V2.TaxInformation.t()] | nil,
          type: String.t() | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :doingBusinessAs,
    :name,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :taxInformation,
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
      dateOfIncorporation: :string,
      doingBusinessAs: :string,
      name: :string,
      principalPlaceOfBusiness: {Adyen.LegalEntity.V2.Address, :t},
      registeredAddress: {Adyen.LegalEntity.V2.Address, :t},
      registrationNumber: :string,
      taxInformation: [{Adyen.LegalEntity.V2.TaxInformation, :t}],
      type:
        {:enum,
         [
           "limitedPartnership",
           "generalPartnership",
           "familyPartnership",
           "commercialPartnership",
           "publicPartnership",
           "otherPartnership",
           "gbr",
           "gmbh",
           "kgaa",
           "cv",
           "vof",
           "maatschap",
           "privateFundLimitedPartnership",
           "businessTrustEntity",
           "businessPartnership",
           "limitedLiabilityPartnership",
           "eg",
           "cooperative",
           "vos",
           "comunidadDeBienes",
           "herenciaYacente",
           "comunidadDePropietarios",
           "sep",
           "sca",
           "bt",
           "kkt",
           "scs",
           "snc"
         ]},
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string
    ]
  end
end
