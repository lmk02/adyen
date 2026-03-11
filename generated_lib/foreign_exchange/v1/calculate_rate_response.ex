defmodule Adyen.ForeignExchange.V1.CalculateRateResponse do
  @moduledoc """
  Provides struct and type for a CalculateRateResponse
  """

  @type t :: %__MODULE__{
          exchangeCalculations: [Adyen.ForeignExchange.V1.CalculateRateResponseItem.t()] | nil
        }

  defstruct [:exchangeCalculations]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [exchangeCalculations: [{Adyen.ForeignExchange.V1.CalculateRateResponseItem, :t}]]
  end
end
