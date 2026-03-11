defmodule Adyen.LegalEntity.V1.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: Adyen.LegalEntity.V1.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: Adyen.LegalEntity.V1.IdentificationData.t() | nil,
          name: Adyen.LegalEntity.V1.Name.t(),
          nationality: String.t() | nil,
          phone: Adyen.LegalEntity.V1.PhoneNumber.t() | nil,
          residentialAddress: Adyen.LegalEntity.V1.Address.t(),
          webData: Adyen.LegalEntity.V1.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {Adyen.LegalEntity.V1.BirthData, :t},
      email: :string,
      identificationData: {Adyen.LegalEntity.V1.IdentificationData, :t},
      name: {Adyen.LegalEntity.V1.Name, :t},
      nationality: :string,
      phone: {Adyen.LegalEntity.V1.PhoneNumber, :t},
      residentialAddress: {Adyen.LegalEntity.V1.Address, :t},
      webData: {Adyen.LegalEntity.V1.WebData, :t}
    ]
  end
end
