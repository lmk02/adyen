defmodule Adyen.Management.V1.DonationCampaignRequest do
  @moduledoc """
  Provides struct and type for a DonationCampaignRequest
  """

  @type t :: %__MODULE__{
          accountHolderIds: [String.t()] | nil,
          inPerson: Adyen.Management.V1.InPersonDonationSettings.t() | nil,
          name: String.t(),
          nonprofitCauseId: String.t(),
          online: Adyen.Management.V1.OnlineDonationSettings.t() | nil
        }

  defstruct [:accountHolderIds, :inPerson, :name, :nonprofitCauseId, :online]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderIds: [:string],
      inPerson: {Adyen.Management.V1.InPersonDonationSettings, :t},
      name: :string,
      nonprofitCauseId: :string,
      online: {Adyen.Management.V1.OnlineDonationSettings, :t}
    ]
  end
end
