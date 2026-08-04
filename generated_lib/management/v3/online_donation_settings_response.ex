defmodule Adyen.Management.V3.OnlineDonationSettingsResponse do
  @moduledoc """
  Provides struct and type for a OnlineDonationSettingsResponse
  """

  @type t :: %__MODULE__{
          amounts: [Adyen.Management.V3.DonationAmount.t()] | nil,
          defaultCurrency: String.t() | nil,
          donationType: String.t() | nil,
          merchantAccounts: [String.t()] | nil,
          storeIds: [String.t()] | nil
        }

  defstruct [:amounts, :defaultCurrency, :donationType, :merchantAccounts, :storeIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amounts: [{Adyen.Management.V3.DonationAmount, :t}],
      defaultCurrency: :string,
      donationType: {:enum, ["roundup", "fixedAmounts", "fixedAmountsRoundup"]},
      merchantAccounts: [:string],
      storeIds: [:string]
    ]
  end
end
