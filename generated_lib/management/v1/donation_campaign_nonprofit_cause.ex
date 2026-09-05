defmodule Adyen.Management.V1.DonationCampaignNonprofitCause do
  @moduledoc """
  Provides struct and type for a DonationCampaignNonprofitCause
  """

  @type t :: %__MODULE__{
          bannerUrl: String.t() | nil,
          causeId: String.t() | nil,
          description: String.t() | nil,
          globalWebsiteUrl: String.t() | nil,
          goals: [String.t()] | nil,
          logoUrl: String.t() | nil,
          nonprofitName: String.t() | nil,
          termsAndConditionsUrl: String.t() | nil
        }

  defstruct [
    :bannerUrl,
    :causeId,
    :description,
    :globalWebsiteUrl,
    :goals,
    :logoUrl,
    :nonprofitName,
    :termsAndConditionsUrl
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bannerUrl: :string,
      causeId: :string,
      description: :string,
      globalWebsiteUrl: :string,
      goals: [:string],
      logoUrl: :string,
      nonprofitName: :string,
      termsAndConditionsUrl: :string
    ]
  end
end
