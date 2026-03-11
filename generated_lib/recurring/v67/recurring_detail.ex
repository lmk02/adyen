defmodule Adyen.Recurring.V67.RecurringDetail do
  @moduledoc """
  Provides struct and type for a RecurringDetail
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          alias: String.t() | nil,
          aliasType: String.t() | nil,
          bank: Adyen.Recurring.V67.BankAccount.t() | nil,
          billingAddress: Adyen.Recurring.V67.Address.t() | nil,
          card: Adyen.Recurring.V67.Card.t() | nil,
          contractTypes: [String.t()] | nil,
          creationDate: DateTime.t() | nil,
          firstPspReference: String.t() | nil,
          name: String.t() | nil,
          paymentMethodVariant: String.t() | nil,
          recurringDetailReference: String.t(),
          shopperName: Adyen.Recurring.V67.Name.t() | nil,
          socialSecurityNumber: String.t() | nil,
          tokenDetails: Adyen.Recurring.V67.TokenDetails.t() | nil,
          variant: String.t()
        }

  defstruct [
    :additionalData,
    :alias,
    :aliasType,
    :bank,
    :billingAddress,
    :card,
    :contractTypes,
    :creationDate,
    :firstPspReference,
    :name,
    :paymentMethodVariant,
    :recurringDetailReference,
    :shopperName,
    :socialSecurityNumber,
    :tokenDetails,
    :variant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      alias: :string,
      aliasType: :string,
      bank: {Adyen.Recurring.V67.BankAccount, :t},
      billingAddress: {Adyen.Recurring.V67.Address, :t},
      card: {Adyen.Recurring.V67.Card, :t},
      contractTypes: [:string],
      creationDate: {:string, "date-time"},
      firstPspReference: :string,
      name: :string,
      paymentMethodVariant: :string,
      recurringDetailReference: :string,
      shopperName: {Adyen.Recurring.V67.Name, :t},
      socialSecurityNumber: :string,
      tokenDetails: {Adyen.Recurring.V67.TokenDetails, :t},
      variant: :string
    ]
  end
end
