defmodule Adyen.Transfers.MerchantPurchaseData do
  @moduledoc """
  Provides struct and type for a MerchantPurchaseData
  """

  @type t :: %__MODULE__{
          airline: Adyen.Transfers.Airline.t() | nil,
          lodging: [Adyen.Transfers.Lodging.t()] | nil,
          type: String.t()
        }

  defstruct [:airline, :lodging, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {Adyen.Transfers.Airline, :t},
      lodging: [{Adyen.Transfers.Lodging, :t}],
      type: {:const, "merchantPurchaseData"}
    ]
  end
end
