defmodule Adyen.Checkout.DonationCampaign do
  @moduledoc """
  Provides struct and type for a DonationCampaign
  """

  alias Adyen.Checkout.Amounts
  alias Adyen.Checkout.Donation

  @type t :: %__MODULE__{
          amounts: Amounts.t() | nil,
          bannerUrl: String.t() | nil,
          campaignName: String.t() | nil,
          causeName: String.t() | nil,
          donation: Donation.t() | nil,
          id: String.t() | nil,
          logoUrl: String.t() | nil,
          nonprofitDescription: String.t() | nil,
          nonprofitName: String.t() | nil,
          nonprofitUrl: String.t() | nil,
          termsAndConditionsUrl: String.t() | nil
        }

  defstruct [
    :amounts,
    :bannerUrl,
    :campaignName,
    :causeName,
    :donation,
    :id,
    :logoUrl,
    :nonprofitDescription,
    :nonprofitName,
    :nonprofitUrl,
    :termsAndConditionsUrl
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amounts: {Amounts, :t},
      bannerUrl: :string,
      campaignName: :string,
      causeName: :string,
      donation: {Donation, :t},
      id: :string,
      logoUrl: :string,
      nonprofitDescription: :string,
      nonprofitName: :string,
      nonprofitUrl: :string,
      termsAndConditionsUrl: :string
    ]
  end
end
