defmodule Adyen.LegalEntity.V3.BusinessLineInfo do
  @moduledoc """
  Provides struct and type for a BusinessLineInfo
  """

  @type t :: %__MODULE__{
          capability: String.t() | nil,
          industryCode: String.t(),
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: Adyen.LegalEntity.V3.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V3.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V3.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
    :industryCode,
    :legalEntityId,
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
      industryCode: :string,
      legalEntityId: :string,
      salesChannels: [:string],
      service: {:enum, ["paymentProcessing", "banking"]},
      sourceOfFunds: {Adyen.LegalEntity.V3.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V3.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V3.WebDataExemption, :t}
    ]
  end
end
