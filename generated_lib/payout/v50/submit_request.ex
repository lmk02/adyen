defmodule Adyen.Payout.V50.SubmitRequest do
  @moduledoc """
  Provides struct and type for a SubmitRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          amount: Adyen.Payout.V50.Amount.t(),
          dateOfBirth: Date.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          merchantAccount: String.t(),
          nationality: String.t() | nil,
          recurring: Adyen.Payout.V50.Recurring.t(),
          reference: String.t(),
          selectedRecurringDetailReference: String.t(),
          shopperEmail: String.t(),
          shopperName: Adyen.Payout.V50.Name.t() | nil,
          shopperReference: String.t(),
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil
        }

  defstruct [
    :additionalData,
    :amount,
    :dateOfBirth,
    :entityType,
    :fraudOffset,
    :merchantAccount,
    :nationality,
    :recurring,
    :reference,
    :selectedRecurringDetailReference,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :shopperStatement,
    :socialSecurityNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      amount: {Adyen.Payout.V50.Amount, :t},
      dateOfBirth: {:string, "date"},
      entityType: {:enum, ["NaturalPerson", "Company"]},
      fraudOffset: {:integer, "int32"},
      merchantAccount: :string,
      nationality: :string,
      recurring: {Adyen.Payout.V50.Recurring, :t},
      reference: :string,
      selectedRecurringDetailReference: :string,
      shopperEmail: :string,
      shopperName: {Adyen.Payout.V50.Name, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string
    ]
  end
end
