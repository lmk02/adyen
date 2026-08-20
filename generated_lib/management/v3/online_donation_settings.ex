defmodule Adyen.Management.V3.OnlineDonationSettings do
  @moduledoc """
  Provides struct and type for a OnlineDonationSettings
  """

  @type t :: %__MODULE__{
          defaultAmount: Adyen.Management.V3.DonationAmount.t() | nil,
          donationType: String.t() | nil,
          merchantAccounts: [String.t()] | nil,
          storeIds: [String.t()] | nil
        }

  defstruct [:defaultAmount, :donationType, :merchantAccounts, :storeIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      defaultAmount: {Adyen.Management.V3.DonationAmount, :t},
      donationType: {:enum, ["roundup", "fixedAmounts", "fixedAmountsRoundup"]},
      merchantAccounts: [:string],
      storeIds: [:string]
    ]
  end
end
