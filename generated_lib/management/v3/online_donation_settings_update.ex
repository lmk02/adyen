defmodule Adyen.Management.V3.OnlineDonationSettingsUpdate do
  @moduledoc """
  Provides struct and type for a OnlineDonationSettingsUpdate
  """

  @type t :: %__MODULE__{
          defaultAmount: Adyen.Management.V3.DonationAmountUpdate.t() | nil,
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
      defaultAmount: {:union, [{Adyen.Management.V3.DonationAmountUpdate, :t}, :null]},
      donationType:
        {:union, [{:enum, ["roundup", "fixedAmounts", "fixedAmountsRoundup"]}, :null]},
      merchantAccounts: {:union, [[:string], :null]},
      storeIds: {:union, [[:string], :null]}
    ]
  end
end
