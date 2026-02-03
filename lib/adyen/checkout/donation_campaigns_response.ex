defmodule Adyen.Checkout.DonationCampaignsResponse do
  @moduledoc """
  Provides struct and type for a DonationCampaignsResponse
  """

  alias Adyen.Checkout.DonationCampaign

  @type t :: %__MODULE__{donationCampaigns: [DonationCampaign.t()] | nil}

  defstruct [:donationCampaigns]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [donationCampaigns: [{DonationCampaign, :t}]]
  end
end
