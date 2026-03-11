defmodule Adyen.LegalEntity.V2.BusinessLineInfo do
  @moduledoc """
  Provides struct and type for a BusinessLineInfo
  """

  @type t :: %__MODULE__{
          capability: String.t(),
          industryCode: String.t(),
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          sourceOfFunds: Adyen.LegalEntity.V2.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V2.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V2.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
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
      industryCode: :string,
      legalEntityId: :string,
      salesChannels: [:string],
      sourceOfFunds: {Adyen.LegalEntity.V2.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V2.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V2.WebDataExemption, :t}
    ]
  end
end
