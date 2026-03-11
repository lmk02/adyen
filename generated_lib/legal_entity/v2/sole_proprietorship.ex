defmodule Adyen.LegalEntity.V2.SoleProprietorship do
  @moduledoc """
  Provides struct and type for a SoleProprietorship
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          dateOfIncorporation: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          name: String.t(),
          principalPlaceOfBusiness: Adyen.LegalEntity.V2.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V2.Address.t(),
          registrationNumber: String.t() | nil,
          taxAbsent: boolean | nil,
          taxInformation: [Adyen.LegalEntity.V2.TaxInformation.t()] | nil,
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
    :taxAbsent,
    :taxInformation,
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
      taxAbsent: :boolean,
      taxInformation: [{Adyen.LegalEntity.V2.TaxInformation, :t}],
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string
    ]
  end
end
