defmodule Adyen.ForeignExchange.CalculateRateRequest do
  @moduledoc """
  Provides struct and type for a CalculateRateRequest
  """

  @type t :: %__MODULE__{
          exchangeCalculations: [Adyen.ForeignExchange.CalculateRateRequestItem.t()]
        }

  defstruct [:exchangeCalculations]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [exchangeCalculations: [{Adyen.ForeignExchange.CalculateRateRequestItem, :t}]]
  end
end
