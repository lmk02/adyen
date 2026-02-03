defmodule Adyen.Transfers.MerchantPurchaseData do
  @moduledoc """
  Provides struct and type for a MerchantPurchaseData
  """

  alias Adyen.Transfers.Airline
  alias Adyen.Transfers.Lodging

  @type t :: %__MODULE__{
          airline: Airline.t() | nil,
          lodging: [Lodging.t()] | nil,
          type: String.t()
        }

  defstruct [:airline, :lodging, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {Airline, :t},
      lodging: [{Lodging, :t}],
      type: {:const, "merchantPurchaseData"}
    ]
  end
end
