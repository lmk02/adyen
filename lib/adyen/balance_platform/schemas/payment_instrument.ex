defmodule Adyen.BalancePlatform.PaymentInstrument do
  @moduledoc """
  Provides struct and type for a PaymentInstrument
  """

  @type t :: %__MODULE__{
          additionalBankAccountIdentifications:
            [Adyen.BalancePlatform.IbanAccountIdentification.t()] | nil,
          balanceAccountId: String.t(),
          bankAccount: Adyen.BalancePlatform.BankAccountDetails.t() | nil,
          card: Adyen.BalancePlatform.Card.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          issuingCountryCode: String.t(),
          paymentInstrumentGroupId: String.t() | nil,
          reference: String.t() | nil,
          replacedById: String.t() | nil,
          replacementOfId: String.t() | nil,
          status: String.t() | nil,
          statusComment: String.t() | nil,
          statusReason: String.t() | nil,
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
    :statusComment,
    :statusReason,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalBankAccountIdentifications: [
        {Adyen.BalancePlatform.IbanAccountIdentification, :t}
      ],
      balanceAccountId: :string,
      bankAccount: {Adyen.BalancePlatform.BankAccountDetails, :t},
      card: {Adyen.BalancePlatform.Card, :t},
      description: :string,
      id: :string,
      issuingCountryCode: :string,
      paymentInstrumentGroupId: :string,
      reference: :string,
      replacedById: :string,
      replacementOfId: :string,
      status: {:enum, ["active", "closed", "inactive", "suspended"]},
      statusComment: :string,
      statusReason:
        {:enum,
         [
           "accountClosure",
           "damaged",
           "endOfLife",
           "expired",
           "lost",
           "other",
           "stolen",
           "suspectedFraud",
           "transactionRule"
         ]},
      type: {:enum, ["bankAccount", "card"]}
    ]
  end
end
