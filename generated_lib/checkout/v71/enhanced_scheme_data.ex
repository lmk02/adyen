defmodule Adyen.Checkout.V71.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: Adyen.Checkout.V71.Airline.t() | nil,
          carRental: Adyen.Checkout.V71.CarRental.t() | nil,
          levelTwoThree: Adyen.Checkout.V71.LevelTwoThree.t() | nil,
          lodging: Adyen.Checkout.V71.Lodging.t() | nil,
          temporaryServices: Adyen.Checkout.V71.TemporaryServices.t() | nil
        }

  defstruct [:airline, :carRental, :levelTwoThree, :lodging, :temporaryServices]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {Adyen.Checkout.V71.Airline, :t},
      carRental: {Adyen.Checkout.V71.CarRental, :t},
      levelTwoThree: {Adyen.Checkout.V71.LevelTwoThree, :t},
      lodging: {Adyen.Checkout.V71.Lodging, :t},
      temporaryServices: {Adyen.Checkout.V71.TemporaryServices, :t}
    ]
  end
end
