defmodule Adyen.LegalEntity.BusinessLine do
  @moduledoc """
  Provides struct and type for a BusinessLine
  """

  @type t :: %__MODULE__{
          id: String.t(),
          industryCode: String.t(),
          legalEntityId: String.t(),
          problems: [Adyen.LegalEntity.CapabilityProblem.t()] | nil,
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: Adyen.LegalEntity.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.WebDataExemption.t() | nil
        }

  defstruct [
    :id,
    :industryCode,
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
      legalEntityId: :string,
      problems: [{Adyen.LegalEntity.CapabilityProblem, :t}],
      salesChannels: [:string],
      service: {:enum, ["paymentProcessing", "issuing", "banking"]},
      sourceOfFunds: {Adyen.LegalEntity.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.WebDataExemption, :t}
    ]
  end
end
