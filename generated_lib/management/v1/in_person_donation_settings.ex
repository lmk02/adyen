defmodule Adyen.Management.V1.InPersonDonationSettings do
  @moduledoc """
  Provides struct and type for a InPersonDonationSettings
  """

  @type t :: %__MODULE__{
          defaultAmount: Adyen.Management.V1.DonationAmount.t() | nil,
          displayTextField: String.t(),
          donationFlow: String.t(),
          donationType: String.t() | nil,
          merchantAccounts: [String.t()] | nil,
          presentCardTimeoutMs: integer | nil,
          promptTimeoutMs: integer | nil,
          storeIds: [String.t()] | nil
        }

  defstruct [
    :defaultAmount,
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
      defaultAmount: {Adyen.Management.V1.DonationAmount, :t},
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
