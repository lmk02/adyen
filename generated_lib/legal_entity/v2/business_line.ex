defmodule Adyen.LegalEntity.V2.BusinessLine do
  @moduledoc """
  Provides struct and type for a BusinessLine
  """

  @type t :: %__MODULE__{
          capability: String.t(),
          id: String.t(),
          industryCode: String.t(),
          industryCodeDescription: String.t() | nil,
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          sourceOfFunds: Adyen.LegalEntity.V2.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V2.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V2.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
    :id,
    :industryCode,
    :industryCodeDescription,
    :legalEntityId,
    :salesChannels,
    :sourceOfFunds,
    :webData,
    :webDataExemption
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capability: {:enum, ["receivePayments", "receiveFromPlatformPayments", "issueBankAccount"]},
      id: :string,
      industryCode: :string,
      industryCodeDescription: :string,
      legalEntityId: :string,
      salesChannels: [:string],
      sourceOfFunds: {Adyen.LegalEntity.V2.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V2.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V2.WebDataExemption, :t}
    ]
  end
end
