defmodule Adyen.LegalEntity.SoleProprietorship do
  @moduledoc """
  Provides struct and type for a SoleProprietorship
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          dateOfIncorporation: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          doingBusinessAsAbsent: boolean | nil,
          financialReports: [Adyen.LegalEntity.FinancialReport.t()] | nil,
          name: String.t(),
          principalPlaceOfBusiness: Adyen.LegalEntity.Address.t() | nil,
          registeredAddress: Adyen.LegalEntity.Address.t(),
          registrationNumber: String.t() | nil,
          taxAbsent: boolean | nil,
          taxInformation: [Adyen.LegalEntity.TaxInformation.t()] | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :doingBusinessAs,
    :doingBusinessAsAbsent,
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
      doingBusinessAsAbsent: :boolean,
      financialReports: [{Adyen.LegalEntity.FinancialReport, :t}],
      name: :string,
      principalPlaceOfBusiness: {Adyen.LegalEntity.Address, :t},
      registeredAddress: {Adyen.LegalEntity.Address, :t},
      registrationNumber: :string,
      taxAbsent: :boolean,
      taxInformation: [{Adyen.LegalEntity.TaxInformation, :t}],
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string
    ]
  end
end
