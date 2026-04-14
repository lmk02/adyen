defmodule Adyen.LegalEntity.V4.BusinessLine do
  @moduledoc """
  Provides struct and type for a BusinessLine
  """

  @type t :: %__MODULE__{
          id: String.t(),
          industryCode: String.t(),
          industryCodeDescription: String.t() | nil,
          legalEntityId: String.t(),
          problems: [Adyen.LegalEntity.V4.CapabilityProblem.t()] | nil,
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: Adyen.LegalEntity.V4.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V4.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V4.WebDataExemption.t() | nil
        }

  defstruct [
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
      id: :string,
      industryCode: :string,
      industryCodeDescription: :string,
      legalEntityId: :string,
      problems: [{Adyen.LegalEntity.V4.CapabilityProblem, :t}],
      salesChannels: [:string],
      service: {:enum, ["paymentProcessing", "issuing", "banking"]},
      sourceOfFunds: {Adyen.LegalEntity.V4.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V4.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V4.WebDataExemption, :t}
    ]
  end
end
