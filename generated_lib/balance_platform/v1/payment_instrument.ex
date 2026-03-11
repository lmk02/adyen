defmodule Adyen.BalancePlatform.V1.PaymentInstrument do
  @moduledoc """
  Provides struct and type for a PaymentInstrument
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t(),
          bankAccount:
            Adyen.BalancePlatform.V1.IbanAccountIdentification.t()
            | Adyen.BalancePlatform.V1.USLocalAccountIdentification.t()
            | nil,
          card: Adyen.BalancePlatform.V1.Card.t() | nil,
          description: String.t() | nil,
          id: String.t(),
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
    :id,
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
      bankAccount:
        {:union,
         [
           {Adyen.BalancePlatform.V1.IbanAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.USLocalAccountIdentification, :t}
         ]},
      card: {Adyen.BalancePlatform.V1.Card, :t},
      description: :string,
      id: :string,
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
