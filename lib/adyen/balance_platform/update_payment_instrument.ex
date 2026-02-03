defmodule Adyen.BalancePlatform.UpdatePaymentInstrument do
  @moduledoc """
  Provides struct and type for a UpdatePaymentInstrument
  """

  alias Adyen.BalancePlatform.BankAccountDetails
  alias Adyen.BalancePlatform.Card
  alias Adyen.BalancePlatform.IbanAccountIdentification

  @type t :: %__MODULE__{
          additionalBankAccountIdentifications: [IbanAccountIdentification.t()] | nil,
          balanceAccountId: String.t(),
          bankAccount: BankAccountDetails.t() | nil,
          card: Card.t() | nil,
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
        {IbanAccountIdentification, :t}
      ],
      balanceAccountId: :string,
      bankAccount: {BankAccountDetails, :t},
      card: {Card, :t},
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
