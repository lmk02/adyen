defmodule Adyen.LegalEntity.V3.BusinessLineInfoUpdate do
  @moduledoc """
  Provides struct and type for a BusinessLineInfoUpdate
  """

  @type t :: %__MODULE__{
          industryCode: String.t() | nil,
          industryCodeDescription: String.t() | nil,
          salesChannels: [String.t()] | nil,
          sourceOfFunds: Adyen.LegalEntity.V3.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.V3.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.V3.WebDataExemption.t() | nil
        }

  defstruct [
    :industryCode,
    :industryCodeDescription,
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
      industryCode: :string,
      industryCodeDescription: :string,
      salesChannels: [:string],
      sourceOfFunds: {Adyen.LegalEntity.V3.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.V3.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.V3.WebDataExemption, :t}
    ]
  end
end
