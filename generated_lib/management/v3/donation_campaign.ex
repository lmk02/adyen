defmodule Adyen.Management.V3.DonationCampaign do
  @moduledoc """
  Provides struct and type for a DonationCampaign
  """

  @type t :: %__MODULE__{
          accountHolderIds: [String.t()] | nil,
          activatedAt: DateTime.t() | nil,
          endedAt: DateTime.t() | nil,
          id: String.t(),
          inPerson: Adyen.Management.V3.InPersonDonationSettingsResponse.t() | nil,
          name: String.t(),
          nonprofitCause: Adyen.Management.V3.DonationCampaignNonprofitCause.t(),
          online: Adyen.Management.V3.OnlineDonationSettingsResponse.t() | nil,
          status: String.t()
        }

  defstruct [
    :accountHolderIds,
    :activatedAt,
    :endedAt,
    :id,
    :inPerson,
    :name,
    :nonprofitCause,
    :online,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderIds: [:string],
      activatedAt: {:string, "date-time"},
      endedAt: {:string, "date-time"},
      id: :string,
      inPerson: {Adyen.Management.V3.InPersonDonationSettingsResponse, :t},
      name: :string,
      nonprofitCause: {Adyen.Management.V3.DonationCampaignNonprofitCause, :t},
      online: {Adyen.Management.V3.OnlineDonationSettingsResponse, :t},
      status: {:enum, ["active", "inactive", "ended"]}
    ]
  end
end
