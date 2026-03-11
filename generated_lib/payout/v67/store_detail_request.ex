defmodule Adyen.Payout.V67.StoreDetailRequest do
  @moduledoc """
  Provides struct and type for a StoreDetailRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          bank: Adyen.Payout.V67.BankAccount.t() | nil,
          billingAddress: Adyen.Payout.V67.Address.t() | nil,
          card: Adyen.Payout.V67.Card.t() | nil,
          dateOfBirth: Date.t(),
          entityType: String.t(),
          fraudOffset: integer | nil,
          merchantAccount: String.t(),
          nationality: String.t(),
          recurring: Adyen.Payout.V67.Recurring.t(),
          selectedBrand: String.t() | nil,
          shopperEmail: String.t(),
          shopperName: Adyen.Payout.V67.Name.t() | nil,
          shopperReference: String.t(),
          socialSecurityNumber: String.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :additionalData,
    :bank,
    :billingAddress,
    :card,
    :dateOfBirth,
    :entityType,
    :fraudOffset,
    :merchantAccount,
    :nationality,
    :recurring,
    :selectedBrand,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :socialSecurityNumber,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      bank: {Adyen.Payout.V67.BankAccount, :t},
      billingAddress: {Adyen.Payout.V67.Address, :t},
      card: {Adyen.Payout.V67.Card, :t},
      dateOfBirth: {:string, "date"},
      entityType: {:enum, ["NaturalPerson", "Company"]},
      fraudOffset: {:integer, "int32"},
      merchantAccount: :string,
      nationality: :string,
      recurring: {Adyen.Payout.V67.Recurring, :t},
      selectedBrand: :string,
      shopperEmail: :string,
      shopperName: {Adyen.Payout.V67.Name, :t},
      shopperReference: :string,
      socialSecurityNumber: :string,
      telephoneNumber: :string
    ]
  end
end
