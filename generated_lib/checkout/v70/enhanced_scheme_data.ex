defmodule Adyen.Checkout.V70.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: Adyen.Checkout.V70.Airline.t() | nil,
          levelTwoThree: Adyen.Checkout.V70.LevelTwoThree.t() | nil
        }

  defstruct [:airline, :levelTwoThree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {Adyen.Checkout.V70.Airline, :t},
      levelTwoThree: {Adyen.Checkout.V70.LevelTwoThree, :t}
    ]
  end
end
