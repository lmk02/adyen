defmodule Adyen.LegalEntity.V3.BusinessLine do
  @moduledoc """
  Provides struct and type for a BusinessLine
  """

  @type t :: %__MODULE__{
          capability: String.t() | nil,
          id: String.t(),
          industryCode: String.t(),
          industryCodeDescription: String.t() | nil,
          legalEntityId: String.t(),
          problems: [Adyen.LegalEntity.V3.CapabilityProblem.t()] | nil,
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: Adyen.LegalEntity.V3.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V3.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V3.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
    :id,
    :industryCode,
    :industryCodeDescription,
    :legalEntityId,
    :problems,
    :salesChannels,
    :service,
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
      problems: [{Adyen.LegalEntity.V3.CapabilityProblem, :t}],
      salesChannels: [:string],
      service: {:enum, ["paymentProcessing", "banking"]},
      sourceOfFunds: {Adyen.LegalEntity.V3.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V3.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V3.WebDataExemption, :t}
    ]
  end
end
