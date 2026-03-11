defmodule Adyen.BinLookup.V40.CostEstimateResponse do
  @moduledoc """
  Provides struct and type for a CostEstimateResponse
  """

  @type t :: %__MODULE__{
          cardBin: Adyen.BinLookup.V40.CardBin.t() | nil,
          costEstimateAmount: Adyen.BinLookup.V40.Amount.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:cardBin, :costEstimateAmount, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardBin: {Adyen.BinLookup.V40.CardBin, :t},
      costEstimateAmount: {Adyen.BinLookup.V40.Amount, :t},
      resultCode: :string
    ]
  end
end
