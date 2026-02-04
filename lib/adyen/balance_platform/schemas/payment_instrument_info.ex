defmodule Adyen.BalancePlatform.PaymentInstrumentInfo do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentInfo
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t(),
          bankAccount: Adyen.BalancePlatform.BankAccountModel.t() | nil,
          card: Adyen.BalancePlatform.CardInfo.t() | nil,
          description: String.t() | nil,
          issuingCountryCode: String.t(),
          paymentInstrumentGroupId: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          statusComment: String.t() | nil,
          statusReason: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :balanceAccountId,
    :bankAccount,
    :card,
    :description,
    :issuingCountryCode,
    :paymentInstrumentGroupId,
    :reference,
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
      balanceAccountId: :string,
      bankAccount: {Adyen.BalancePlatform.BankAccountModel, :t},
      card: {Adyen.BalancePlatform.CardInfo, :t},
      description: :string,
      issuingCountryCode: :string,
      paymentInstrumentGroupId: :string,
      reference: :string,
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
