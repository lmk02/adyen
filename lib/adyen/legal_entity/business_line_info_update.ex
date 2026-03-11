defmodule Adyen.LegalEntity.BusinessLineInfoUpdate do
  @moduledoc """
  Provides struct and type for a BusinessLineInfoUpdate
  """

  @type t :: %__MODULE__{
          industryCode: String.t() | nil,
          salesChannels: [String.t()] | nil,
          sourceOfFunds: Adyen.LegalEntity.SourceOfFunds.t() | nil,
          webData: [Adyen.LegalEntity.WebData.t()] | nil,
          webDataExemption: Adyen.LegalEntity.WebDataExemption.t() | nil
        }

  defstruct [:industryCode, :salesChannels, :sourceOfFunds, :webData, :webDataExemption]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      industryCode: :string,
      salesChannels: [:string],
      sourceOfFunds: {Adyen.LegalEntity.SourceOfFunds, :t},
      webData: [{Adyen.LegalEntity.WebData, :t}],
      webDataExemption: {Adyen.LegalEntity.WebDataExemption, :t}
    ]
  end
end
