defmodule Adyen.LegalEntity.BusinessLineInfo do
  @moduledoc """
  Provides struct and type for a BusinessLineInfo
  """

  @type t :: %__MODULE__{
          industryCode: String.t(),
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: Adyen.LegalEntity.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.WebDataExemption.t() | nil
        }

  defstruct [
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
      industryCode: :string,
      legalEntityId: :string,
      salesChannels: [:string],
      service: {:enum, ["paymentProcessing", "issuing", "banking"]},
      sourceOfFunds: {Adyen.LegalEntity.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.WebDataExemption, :t}
    ]
  end
end
