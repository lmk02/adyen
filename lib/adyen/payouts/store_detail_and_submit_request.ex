defmodule Adyen.Payouts.StoreDetailAndSubmitRequest do
  @moduledoc """
  Provides struct and type for a StoreDetailAndSubmitRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          amount: Adyen.Payouts.Amount.t(),
          bank: Adyen.Payouts.BankAccount.t() | nil,
          billingAddress: Adyen.Payouts.Address.t() | nil,
          card: Adyen.Payouts.Card.t() | nil,
          dateOfBirth: Date.t(),
          entityType: String.t(),
          fraudOffset: integer | nil,
          merchantAccount: String.t(),
          nationality: String.t(),
          recurring: Adyen.Payouts.Recurring.t(),
          reference: String.t(),
          selectedBrand: String.t() | nil,
          shopperEmail: String.t(),
          shopperName: Adyen.Payouts.Name.t() | nil,
          shopperReference: String.t(),
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :additionalData,
    :amount,
    :bank,
    :billingAddress,
    :card,
    :dateOfBirth,
    :entityType,
    :fraudOffset,
    :merchantAccount,
    :nationality,
    :recurring,
    :reference,
    :selectedBrand,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :shopperStatement,
    :socialSecurityNumber,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      amount: {Adyen.Payouts.Amount, :t},
      bank: {Adyen.Payouts.BankAccount, :t},
      billingAddress: {Adyen.Payouts.Address, :t},
      card: {Adyen.Payouts.Card, :t},
      dateOfBirth: {:string, "date"},
      entityType: {:enum, ["NaturalPerson", "Company"]},
      fraudOffset: {:integer, "int32"},
      merchantAccount: :string,
      nationality: :string,
      recurring: {Adyen.Payouts.Recurring, :t},
      reference: :string,
      selectedBrand: :string,
      shopperEmail: :string,
      shopperName: {Adyen.Payouts.Name, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      telephoneNumber: :string
    ]
  end
end
