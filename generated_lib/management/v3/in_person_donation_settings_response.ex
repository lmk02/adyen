defmodule Adyen.Management.V3.InPersonDonationSettingsResponse do
  @moduledoc """
  Provides struct and type for a InPersonDonationSettingsResponse
  """

  @type t :: %__MODULE__{
          amounts: [Adyen.Management.V3.DonationAmount.t()] | nil,
          defaultCurrency: String.t() | nil,
          displayTextField: String.t() | nil,
          donationFlow: String.t() | nil,
          donationType: String.t() | nil,
          merchantAccounts: [String.t()] | nil,
          presentCardTimeoutMs: integer | nil,
          promptTimeoutMs: integer | nil,
          storeIds: [String.t()] | nil
        }

  defstruct [
    :amounts,
    :defaultCurrency,
    :displayTextField,
    :donationFlow,
    :donationType,
    :merchantAccounts,
    :presentCardTimeoutMs,
    :promptTimeoutMs,
    :storeIds
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amounts: [{Adyen.Management.V3.DonationAmount, :t}],
      defaultCurrency: :string,
      displayTextField: {:enum, ["causeName", "nonprofitName"]},
      donationFlow: {:enum, ["oneStep", "twoStep"]},
      donationType: {:enum, ["roundup", "fixedAmounts", "fixedAmountsRoundup"]},
      merchantAccounts: [:string],
      presentCardTimeoutMs: {:integer, "int64"},
      promptTimeoutMs: {:integer, "int64"},
      storeIds: [:string]
    ]
  end
end
