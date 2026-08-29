defmodule Adyen.BalancePlatform.V1.PaymentInstrumentInfo do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentInfo
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t(),
          bankAccount: Adyen.BalancePlatform.V1.BankAccountModel.t() | nil,
          card: Adyen.BalancePlatform.V1.CardInfo.t() | nil,
          description: String.t() | nil,
          issuingCountryCode: String.t(),
          paymentInstrumentGroupId: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
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
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {Adyen.BalancePlatform.V1.BankAccountModel, :t},
      card: {Adyen.BalancePlatform.V1.CardInfo, :t},
      description: :string,
      issuingCountryCode: :string,
      paymentInstrumentGroupId: :string,
      reference: :string,
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
