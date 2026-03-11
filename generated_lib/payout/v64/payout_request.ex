defmodule Adyen.Payout.V64.PayoutRequest do
  @moduledoc """
  Provides struct and type for a PayoutRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Payout.V64.Amount.t(),
          billingAddress: Adyen.Payout.V64.Address.t() | nil,
          card: Adyen.Payout.V64.Card.t() | nil,
          fraudOffset: integer | nil,
          fundSource: Adyen.Payout.V64.FundSource.t() | nil,
          merchantAccount: String.t(),
          recurring: Adyen.Payout.V64.Recurring.t() | nil,
          reference: String.t(),
          selectedRecurringDetailReference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperName: Adyen.Payout.V64.Name.t() | nil,
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
      amount: {Adyen.Payout.V64.Amount, :t},
      billingAddress: {Adyen.Payout.V64.Address, :t},
      card: {Adyen.Payout.V64.Card, :t},
      fraudOffset: {:integer, "int32"},
      fundSource: {Adyen.Payout.V64.FundSource, :t},
      merchantAccount: :string,
      recurring: {Adyen.Payout.V64.Recurring, :t},
      reference: :string,
      selectedRecurringDetailReference: :string,
      shopperEmail: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperName: {Adyen.Payout.V64.Name, :t},
      shopperReference: :string,
      telephoneNumber: :string
    ]
  end
end
