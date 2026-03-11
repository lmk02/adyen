defmodule Adyen.BalancePlatform.V1.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          accountType: String.t() | nil,
          bankBicSwift: String.t() | nil,
          bankCity: String.t() | nil,
          bankCode: String.t() | nil,
          bankName: String.t() | nil,
          branchCode: String.t() | nil,
          checkCode: String.t() | nil,
          countryCode: String.t() | nil,
          currencyCode: String.t(),
          iban: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :accountType,
    :bankBicSwift,
    :bankCity,
    :bankCode,
    :bankName,
    :branchCode,
    :checkCode,
    :countryCode,
    :currencyCode,
    :iban
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      accountType: :string,
      bankBicSwift: :string,
      bankCity: :string,
      bankCode: :string,
      bankName: :string,
      branchCode: :string,
      checkCode: :string,
      countryCode: :string,
      currencyCode: :string,
      iban: :string
    ]
  end
end
