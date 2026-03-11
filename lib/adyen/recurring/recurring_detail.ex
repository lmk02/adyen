defmodule Adyen.Recurring.RecurringDetail do
  @moduledoc """
  Provides struct and type for a RecurringDetail
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          alias: String.t() | nil,
          aliasType: String.t() | nil,
          bank: Adyen.Recurring.BankAccount.t() | nil,
          billingAddress: Adyen.Recurring.Address.t() | nil,
          card: Adyen.Recurring.Card.t() | nil,
          contractTypes: [String.t()] | nil,
          creationDate: DateTime.t() | nil,
          firstPspReference: String.t() | nil,
          name: String.t() | nil,
          networkTxReference: String.t() | nil,
          paymentMethodVariant: String.t() | nil,
          recurringDetailReference: String.t(),
          shopperName: Adyen.Recurring.Name.t() | nil,
          socialSecurityNumber: String.t() | nil,
          tokenDetails: Adyen.Recurring.TokenDetails.t() | nil,
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
    :networkTxReference,
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
      bank: {Adyen.Recurring.BankAccount, :t},
      billingAddress: {Adyen.Recurring.Address, :t},
      card: {Adyen.Recurring.Card, :t},
      contractTypes: [:string],
      creationDate: {:string, "date-time"},
      firstPspReference: :string,
      name: :string,
      networkTxReference: :string,
      paymentMethodVariant: :string,
      recurringDetailReference: :string,
      shopperName: {Adyen.Recurring.Name, :t},
      socialSecurityNumber: :string,
      tokenDetails: {Adyen.Recurring.TokenDetails, :t},
      variant: :string
    ]
  end
end
