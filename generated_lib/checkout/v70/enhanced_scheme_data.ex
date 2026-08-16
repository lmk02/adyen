defmodule Adyen.Checkout.V70.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: Adyen.Checkout.V70.Airline.t() | nil,
          carRental: Adyen.Checkout.V70.CarRental.t() | nil,
          levelTwoThree: Adyen.Checkout.V70.LevelTwoThree.t() | nil,
          lodging: Adyen.Checkout.V70.Lodging.t() | nil,
          temporaryServices: Adyen.Checkout.V70.TemporaryServices.t() | nil
        }

  defstruct [:airline, :carRental, :levelTwoThree, :lodging, :temporaryServices]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {Adyen.Checkout.V70.Airline, :t},
      carRental: {Adyen.Checkout.V70.CarRental, :t},
      levelTwoThree: {Adyen.Checkout.V70.LevelTwoThree, :t},
      lodging: {Adyen.Checkout.V70.Lodging, :t},
      temporaryServices: {Adyen.Checkout.V70.TemporaryServices, :t}
    ]
  end
end
