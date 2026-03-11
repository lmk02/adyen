defmodule Adyen.ForeignExchange.CalculateRateResponseItem do
  @moduledoc """
  Provides struct and type for a CalculateRateResponseItem
  """

  @type t :: %__MODULE__{
          appliedExchangeRate: number | nil,
          exchangeSide: String.t() | nil,
          sourceAmount: Adyen.ForeignExchange.Amount.t() | nil,
          targetAmount: Adyen.ForeignExchange.Amount.t() | nil,
          type: String.t() | nil
        }

  defstruct [:appliedExchangeRate, :exchangeSide, :sourceAmount, :targetAmount, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      appliedExchangeRate: :number,
      exchangeSide: :string,
      sourceAmount: {Adyen.ForeignExchange.Amount, :t},
      targetAmount: {Adyen.ForeignExchange.Amount, :t},
      type: :string
    ]
  end
end
