defmodule Adyen.Payouts.PayoutRequest do
  @moduledoc """
  Provides struct and type for a PayoutRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Payouts.Amount.t(),
          billingAddress: Adyen.Payouts.Address.t() | nil,
          card: Adyen.Payouts.Card.t() | nil,
          fraudOffset: integer | nil,
          fundSource: Adyen.Payouts.FundSource.t() | nil,
          merchantAccount: String.t(),
          recurring: Adyen.Payouts.Recurring.t() | nil,
          reference: String.t(),
          selectedRecurringDetailReference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperName: Adyen.Payouts.Name.t() | nil,
          shopperReference: String.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :amount,
    :billingAddress,
    :card,
    :fraudOffset,
    :fundSource,
    :merchantAccount,
    :recurring,
    :reference,
    :selectedRecurringDetailReference,
    :shopperEmail,
    :shopperInteraction,
    :shopperName,
    :shopperReference,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Payouts.Amount, :t},
      billingAddress: {Adyen.Payouts.Address, :t},
      card: {Adyen.Payouts.Card, :t},
      fraudOffset: {:integer, "int32"},
      fundSource: {Adyen.Payouts.FundSource, :t},
      merchantAccount: :string,
      recurring: {Adyen.Payouts.Recurring, :t},
      reference: :string,
      selectedRecurringDetailReference: :string,
      shopperEmail: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperName: {Adyen.Payouts.Name, :t},
      shopperReference: :string,
      telephoneNumber: :string
    ]
  end
end
