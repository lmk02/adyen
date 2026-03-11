defmodule Adyen.LegalEntity.UnincorporatedPartnership do
  @moduledoc """
  Provides struct and type for a UnincorporatedPartnership
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          dateOfIncorporation: String.t() | nil,
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          doingBusinessAsAbsent: boolean | nil,
          name: String.t(),
          principalPlaceOfBusiness: Adyen.LegalEntity.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.Address.t(),
          registrationNumber: String.t() | nil,
          taxInformation: [Adyen.LegalEntity.TaxInformation.t()] | nil,
          type: String.t() | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :description,
    :doingBusinessAs,
    :doingBusinessAsAbsent,
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
      description: :string,
      doingBusinessAs: :string,
      doingBusinessAsAbsent: :boolean,
      name: :string,
      principalPlaceOfBusiness: {Adyen.LegalEntity.Address, :t},
      registeredAddress: {Adyen.LegalEntity.Address, :t},
      registrationNumber: :string,
      taxInformation: [{Adyen.LegalEntity.TaxInformation, :t}],
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
