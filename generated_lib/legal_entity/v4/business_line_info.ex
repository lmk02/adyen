defmodule Adyen.LegalEntity.V4.BusinessLineInfo do
  @moduledoc """
  Provides struct and type for a BusinessLineInfo
  """

  @type t :: %__MODULE__{
          industryCode: String.t(),
          industryCodeDescription: String.t() | nil,
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: Adyen.LegalEntity.V4.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V4.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V4.WebDataExemption.t() | nil
        }

  defstruct [
    :industryCode,
    :industryCodeDescription,
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
      industryCodeDescription: :string,
      legalEntityId: :string,
      salesChannels: [:string],
      service: {:enum, ["paymentProcessing", "issuing", "banking"]},
      sourceOfFunds: {Adyen.LegalEntity.V4.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V4.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V4.WebDataExemption, :t}
    ]
  end
end
