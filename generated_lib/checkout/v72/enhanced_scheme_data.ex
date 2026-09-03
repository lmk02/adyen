defmodule Adyen.Checkout.V72.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: Adyen.Checkout.V72.Airline.t() | nil,
          carRental: Adyen.Checkout.V72.CarRental.t() | nil,
          healthcare: Adyen.Checkout.V72.Healthcare.t() | nil,
          levelTwoThree: Adyen.Checkout.V72.LevelTwoThree.t() | nil,
          lodging: Adyen.Checkout.V72.Lodging.t() | nil,
          temporaryServices: Adyen.Checkout.V72.TemporaryServices.t() | nil
        }

  defstruct [:airline, :carRental, :healthcare, :levelTwoThree, :lodging, :temporaryServices]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {Adyen.Checkout.V72.Airline, :t},
      carRental: {Adyen.Checkout.V72.CarRental, :t},
      healthcare: {Adyen.Checkout.V72.Healthcare, :t},
      levelTwoThree: {Adyen.Checkout.V72.LevelTwoThree, :t},
      lodging: {Adyen.Checkout.V72.Lodging, :t},
      temporaryServices: {Adyen.Checkout.V72.TemporaryServices, :t}
    ]
  end
end
