defmodule Adyen.LegalEntity.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: Adyen.LegalEntity.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: Adyen.LegalEntity.IdentificationData.t() | nil,
          name: Adyen.LegalEntity.Name.t(),
          nationality: String.t() | nil,
          phone: Adyen.LegalEntity.PhoneNumber.t() | nil,
          residentialAddress: Adyen.LegalEntity.Address.t(),
          support: Adyen.LegalEntity.Support.t() | nil,
          taxInformation: [Adyen.LegalEntity.TaxInformation.t()] | nil,
          webData: Adyen.LegalEntity.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :support,
    :taxInformation,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {Adyen.LegalEntity.BirthData, :t},
      email: :string,
      identificationData: {Adyen.LegalEntity.IdentificationData, :t},
      name: {Adyen.LegalEntity.Name, :t},
      nationality: :string,
      phone: {Adyen.LegalEntity.PhoneNumber, :t},
      residentialAddress: {Adyen.LegalEntity.Address, :t},
      support: {Adyen.LegalEntity.Support, :t},
      taxInformation: [{Adyen.LegalEntity.TaxInformation, :t}],
      webData: {Adyen.LegalEntity.WebData, :t}
    ]
  end
end
