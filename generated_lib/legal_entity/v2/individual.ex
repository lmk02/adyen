defmodule Adyen.LegalEntity.V2.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: Adyen.LegalEntity.V2.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: Adyen.LegalEntity.V2.IdentificationData.t() | nil,
          name: Adyen.LegalEntity.V2.Name.t(),
          nationality: String.t() | nil,
          phone: Adyen.LegalEntity.V2.PhoneNumber.t() | nil,
          residentialAddress: Adyen.LegalEntity.V2.Address.t(),
          taxInformation: [Adyen.LegalEntity.V2.TaxInformation.t()] | nil,
          webData: Adyen.LegalEntity.V2.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :taxInformation,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {Adyen.LegalEntity.V2.BirthData, :t},
      email: :string,
      identificationData: {Adyen.LegalEntity.V2.IdentificationData, :t},
      name: {Adyen.LegalEntity.V2.Name, :t},
      nationality: :string,
      phone: {Adyen.LegalEntity.V2.PhoneNumber, :t},
      residentialAddress: {Adyen.LegalEntity.V2.Address, :t},
      taxInformation: [{Adyen.LegalEntity.V2.TaxInformation, :t}],
      webData: {Adyen.LegalEntity.V2.WebData, :t}
    ]
  end
end
