defmodule Adyen.BalancePlatform.V1.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          email: String.t() | nil,
          legalName: String.t(),
          phone: Adyen.BalancePlatform.V1.PhoneNumber2.t() | nil,
          principalPlaceOfBusiness: Adyen.BalancePlatform.V1.Address3.t() | nil,
          registeredAddress: Adyen.BalancePlatform.V1.Address3.t(),
          registrationNumber: String.t() | nil,
          stockData: Adyen.BalancePlatform.V1.StockData.t() | nil,
          taxExempt: boolean | nil,
          taxId: String.t() | nil,
          taxIdAbsenceReason: String.t() | nil,
          type: String.t() | nil,
          webData: Adyen.BalancePlatform.V1.WebData.t() | nil
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
      phone: {Adyen.BalancePlatform.V1.PhoneNumber2, :t},
      principalPlaceOfBusiness: {Adyen.BalancePlatform.V1.Address3, :t},
      registeredAddress: {Adyen.BalancePlatform.V1.Address3, :t},
      registrationNumber: :string,
      stockData: {Adyen.BalancePlatform.V1.StockData, :t},
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
      webData: {Adyen.BalancePlatform.V1.WebData, :t}
    ]
  end
end
