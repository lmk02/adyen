defmodule Adyen.ForeignExchange.CalculateRateRequestItem do
  @moduledoc """
  Provides struct and type for a CalculateRateRequestItem
  """

  @type t :: %__MODULE__{
          exchangeSide: String.t(),
          sourceAmount: Adyen.ForeignExchange.Amount.t(),
          targetCurrency: String.t(),
          type: String.t()
        }

  defstruct [:exchangeSide, :sourceAmount, :targetCurrency, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      exchangeSide: {:enum, ["buy", "sell"]},
      sourceAmount: {Adyen.ForeignExchange.Amount, :t},
      targetCurrency: :string,
      type: {:enum, ["splitPayment", "balanceConversion", "transfer", "splitRefund"]}
    ]
  end
end
