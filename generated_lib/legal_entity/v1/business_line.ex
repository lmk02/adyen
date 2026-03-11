defmodule Adyen.LegalEntity.V1.BusinessLine do
  @moduledoc """
  Provides struct and type for a BusinessLine
  """

  @type t :: %__MODULE__{
          capability: String.t(),
          id: String.t(),
          industryCode: String.t(),
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          sourceOfFunds: Adyen.LegalEntity.V1.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V1.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V1.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
    :id,
    :industryCode,
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
      legalEntityId: :string,
      salesChannels: [:string],
      sourceOfFunds: {Adyen.LegalEntity.V1.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V1.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V1.WebDataExemption, :t}
    ]
  end
end
