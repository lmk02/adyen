defmodule Adyen.LegalEntity.V4.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: Adyen.LegalEntity.V4.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: Adyen.LegalEntity.V4.IdentificationData.t() | nil,
          name: Adyen.LegalEntity.V4.Name.t(),
          nationality: String.t() | nil,
          phone: Adyen.LegalEntity.V4.PhoneNumber.t() | nil,
          residentialAddress: Adyen.LegalEntity.V4.Address.t(),
          support: Adyen.LegalEntity.V4.Support.t() | nil,
          taxInformation: [Adyen.LegalEntity.V4.TaxInformation.t()] | nil,
          webData: Adyen.LegalEntity.V4.WebData.t() | nil
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
      birthData: {Adyen.LegalEntity.V4.BirthData, :t},
      email: :string,
      identificationData: {Adyen.LegalEntity.V4.IdentificationData, :t},
      name: {Adyen.LegalEntity.V4.Name, :t},
      nationality: :string,
      phone: {Adyen.LegalEntity.V4.PhoneNumber, :t},
      residentialAddress: {Adyen.LegalEntity.V4.Address, :t},
      support: {Adyen.LegalEntity.V4.Support, :t},
      taxInformation: [{Adyen.LegalEntity.V4.TaxInformation, :t}],
      webData: {Adyen.LegalEntity.V4.WebData, :t}
    ]
  end
end
