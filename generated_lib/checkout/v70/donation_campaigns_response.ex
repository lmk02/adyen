defmodule Adyen.Checkout.V70.DonationCampaignsResponse do
  @moduledoc """
  Provides struct and type for a DonationCampaignsResponse
  """

  @type t :: %__MODULE__{donationCampaigns: [Adyen.Checkout.V70.DonationCampaign.t()] | nil}

  defstruct [:donationCampaigns]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [donationCampaigns: [{Adyen.Checkout.V70.DonationCampaign, :t}]]
  end
end
