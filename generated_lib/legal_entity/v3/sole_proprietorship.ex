defmodule Adyen.LegalEntity.V3.SoleProprietorship do
  @moduledoc """
  Provides struct and type for a SoleProprietorship
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          dateOfIncorporation: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          financialReports: [Adyen.LegalEntity.V3.FinancialReport.t()] | nil,
          name: String.t(),
          principalPlaceOfBusiness: Adyen.LegalEntity.V3.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.V3.Address.t(),
          registrationNumber: String.t() | nil,
          taxAbsent: boolean | nil,
          taxInformation: [Adyen.LegalEntity.V3.TaxInformation.t()] | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :doingBusinessAs,
    :financialReports,
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
      financialReports: [{Adyen.LegalEntity.V3.FinancialReport, :t}],
      name: :string,
      principalPlaceOfBusiness: {Adyen.LegalEntity.V3.Address, :t},
      registeredAddress: {Adyen.LegalEntity.V3.Address, :t},
      registrationNumber: :string,
      taxAbsent: :boolean,
      taxInformation: [{Adyen.LegalEntity.V3.TaxInformation, :t}],
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string
    ]
  end
end
