defmodule Adyen.Fund.V3.BankAccountDetail do
  @moduledoc """
  Provides struct and type for a BankAccountDetail
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          accountType: String.t() | nil,
          bankAccountName: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          bankBicSwift: String.t() | nil,
          bankCity: String.t() | nil,
          bankCode: String.t() | nil,
          bankName: String.t() | nil,
          branchCode: String.t() | nil,
          checkCode: String.t() | nil,
          countryCode: String.t() | nil,
          currencyCode: String.t() | nil,
          iban: String.t() | nil,
          ownerCity: String.t() | nil,
          ownerCountryCode: String.t() | nil,
          ownerDateOfBirth: String.t() | nil,
          ownerHouseNumberOrName: String.t() | nil,
          ownerName: String.t() | nil,
          ownerNationality: String.t() | nil,
          ownerPostalCode: String.t() | nil,
          ownerState: String.t() | nil,
          ownerStreet: String.t() | nil,
          primaryAccount: boolean | nil,
          taxId: String.t() | nil,
          urlForVerification: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :accountType,
    :bankAccountName,
    :bankAccountUUID,
    :bankBicSwift,
    :bankCity,
    :bankCode,
    :bankName,
    :branchCode,
    :checkCode,
    :countryCode,
    :currencyCode,
    :iban,
    :ownerCity,
    :ownerCountryCode,
    :ownerDateOfBirth,
    :ownerHouseNumberOrName,
    :ownerName,
    :ownerNationality,
    :ownerPostalCode,
    :ownerState,
    :ownerStreet,
    :primaryAccount,
    :taxId,
    :urlForVerification
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      accountType: :string,
      bankAccountName: :string,
      bankAccountUUID: :string,
      bankBicSwift: :string,
      bankCity: :string,
      bankCode: :string,
      bankName: :string,
      branchCode: :string,
      checkCode: :string,
      countryCode: :string,
      currencyCode: :string,
      iban: :string,
      ownerCity: :string,
      ownerCountryCode: :string,
      ownerDateOfBirth: :string,
      ownerHouseNumberOrName: :string,
      ownerName: :string,
      ownerNationality: :string,
      ownerPostalCode: :string,
      ownerState: :string,
      ownerStreet: :string,
      primaryAccount: :boolean,
      taxId: :string,
      urlForVerification: :string
    ]
  end
end
