defmodule Adyen.Checkout.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  alias Adyen.Checkout.Airline
  alias Adyen.Checkout.LevelTwoThree

  @type t :: %__MODULE__{
          airline: Airline.t() | nil,
          levelTwoThree: LevelTwoThree.t() | nil
        }

  defstruct [:airline, :levelTwoThree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [airline: {Airline, :t}, levelTwoThree: {LevelTwoThree, :t}]
  end
end
