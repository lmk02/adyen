defmodule Adyen.Checkout.Leg do
  @moduledoc """
  Provides struct and type for a Leg
  """

  @type t :: %__MODULE__{
          carrierCode: String.t() | nil,
          classOfTravel: String.t() | nil,
          dateOfTravel: DateTime.t() | nil,
          departureAirportCode: String.t() | nil,
          departureTax: integer | nil,
          destinationAirportCode: String.t() | nil,
          fareBasisCode: String.t() | nil,
          flightNumber: String.t() | nil,
          stopOverCode: String.t() | nil
        }

  defstruct [
    :carrierCode,
    :classOfTravel,
    :dateOfTravel,
    :departureAirportCode,
    :departureTax,
    :destinationAirportCode,
    :fareBasisCode,
    :flightNumber,
    :stopOverCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      carrierCode: :string,
      classOfTravel: :string,
      dateOfTravel: {:string, "date-time"},
      departureAirportCode: :string,
      departureTax: {:integer, "int64"},
      destinationAirportCode: :string,
      fareBasisCode: :string,
      flightNumber: :string,
      stopOverCode: :string
    ]
  end
end
