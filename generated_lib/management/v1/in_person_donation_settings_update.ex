defmodule Adyen.Management.V1.InPersonDonationSettingsUpdate do
  @moduledoc """
  Provides struct and type for a InPersonDonationSettingsUpdate
  """

  @type t :: %__MODULE__{
          defaultAmount: Adyen.Management.V1.DonationAmountUpdate.t() | nil,
          displayTextField: String.t() | nil,
          donationFlow: String.t() | nil,
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
      defaultAmount: {:union, [{Adyen.Management.V1.DonationAmountUpdate, :t}, :null]},
      displayTextField: {:enum, ["causeName", "nonprofitName"]},
      donationFlow: {:enum, ["oneStep", "twoStep"]},
      donationType:
        {:union, [{:enum, ["roundup", "fixedAmounts", "fixedAmountsRoundup"]}, :null]},
      merchantAccounts: {:union, [[:string], :null]},
      presentCardTimeoutMs: {:union, [{:integer, "int64"}, :null]},
      promptTimeoutMs: {:union, [{:integer, "int64"}, :null]},
      storeIds: {:union, [[:string], :null]}
    ]
  end
end
