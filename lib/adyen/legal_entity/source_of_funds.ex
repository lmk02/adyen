defmodule Adyen.LegalEntity.SourceOfFunds do
  @moduledoc """
  Provides struct and type for a SourceOfFunds
  """

  @type t :: %__MODULE__{
          adyenProcessedFunds: boolean,
          amount: Adyen.LegalEntity.Amount.t() | nil,
          assetMonthsHeld: integer | nil,
          cryptocurrencyExchange: String.t() | nil,
          dateOfFundsReceived: Date.t() | nil,
          dateOfSourceEvent: Date.t() | nil,
          description: String.t() | nil,
          financiers: [Adyen.LegalEntity.Financier.t()] | nil,
          originatorLegalEntityId: String.t() | nil,
          purpose: String.t() | nil,
          relationship: String.t() | nil,
          type: String.t() | nil,
          website: String.t() | nil
        }

  defstruct [
    :adyenProcessedFunds,
    :amount,
    :assetMonthsHeld,
    :cryptocurrencyExchange,
    :dateOfFundsReceived,
    :dateOfSourceEvent,
    :description,
    :financiers,
    :originatorLegalEntityId,
    :purpose,
    :relationship,
    :type,
    :website
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      adyenProcessedFunds: :boolean,
      amount: {Adyen.LegalEntity.Amount, :t},
      assetMonthsHeld: {:integer, "int32"},
      cryptocurrencyExchange: :string,
      dateOfFundsReceived: {:string, "date"},
      dateOfSourceEvent: {:string, "date"},
      description: :string,
      financiers: [{Adyen.LegalEntity.Financier, :t}],
      originatorLegalEntityId: :string,
      purpose: :string,
      relationship: :string,
      type:
        {:enum,
         [
           "business",
           "employment",
           "donations",
           "inheritance",
           "financialAid",
           "rentalIncome",
           "dividendIncome",
           "royaltyIncome",
           "thirdPartyFunding",
           "pensionIncome",
           "insuranceSettlement",
           "cryptocurrencyIncome",
           "assetSale",
           "loans",
           "gamblingWinnings"
         ]},
      website: :string
    ]
  end
end
