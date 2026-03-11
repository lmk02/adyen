defmodule Adyen.LegalEntity.V3.StockData do
  @moduledoc """
  Provides struct and type for a StockData
  """

  @type t :: %__MODULE__{
          marketIdentifier: String.t() | nil,
          stockNumber: String.t() | nil,
          tickerSymbol: String.t() | nil
        }

  defstruct [:marketIdentifier, :stockNumber, :tickerSymbol]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [marketIdentifier: :string, stockNumber: :string, tickerSymbol: :string]
  end
end
