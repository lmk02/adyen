defmodule Adyen.ForeignExchange.CalculateRateResponse do
  @moduledoc """
  Provides struct and type for a CalculateRateResponse
  """

  @type t :: %__MODULE__{
          exchangeCalculations: [Adyen.ForeignExchange.CalculateRateResponseItem.t()] | nil
        }

  defstruct [:exchangeCalculations]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [exchangeCalculations: [{Adyen.ForeignExchange.CalculateRateResponseItem, :t}]]
  end
end
