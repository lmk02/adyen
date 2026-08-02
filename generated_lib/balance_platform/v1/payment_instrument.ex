defmodule Adyen.BalancePlatform.V1.PaymentInstrument do
  @moduledoc """
  Provides struct and type for a PaymentInstrument
  """

  @type t :: %__MODULE__{
          additionalBankAccountIdentifications:
            [Adyen.BalancePlatform.V1.IbanAccountIdentification.t()] | nil,
          balanceAccountId: String.t(),
          bankAccount: Adyen.BalancePlatform.V1.BankAccountDetails.t() | nil,
          card: Adyen.BalancePlatform.V1.Card.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          issuingCountryCode: String.t(),
          paymentInstrumentGroupId: String.t() | nil,
          reference: String.t() | nil,
          replacedById: String.t() | nil,
          replacementOfId: String.t() | nil,
          status: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :additionalBankAccountIdentifications,
    :balanceAccountId,
    :bankAccount,
    :card,
    :description,
    :id,
    :issuingCountryCode,
    :paymentInstrumentGroupId,
    :reference,
    :replacedById,
    :replacementOfId,
    :status,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalBankAccountIdentifications: [
        {Adyen.BalancePlatform.V1.IbanAccountIdentification, :t}
      ],
      balanceAccountId: :string,
      bankAccount: {Adyen.BalancePlatform.V1.BankAccountDetails, :t},
      card: {Adyen.BalancePlatform.V1.Card, :t},
      description: :string,
      id: :string,
      issuingCountryCode: :string,
      paymentInstrumentGroupId: :string,
      reference: :string,
      replacedById: :string,
      replacementOfId: :string,
      status:
        {:enum,
         [
           "Active",
           "Closed",
           "Inactive",
           "Lost",
           "Requested",
           "Stolen",
           "Suspended",
           "blocked",
           "discarded"
         ]},
      type: {:enum, ["bankAccount", "card"]}
    ]
  end
end
