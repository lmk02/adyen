defmodule Adyen.Transfers.Leg do
  @moduledoc """
  Provides struct and type for a Leg
  """

  @type t :: %__MODULE__{
          arrivalAirportCode: String.t() | nil,
          basicFareCode: String.t() | nil,
          carrierCode: String.t() | nil,
          departureAirportCode: String.t() | nil,
          departureDate: String.t() | nil,
          flightNumber: String.t() | nil
        }

  defstruct [
    :arrivalAirportCode,
    :basicFareCode,
    :carrierCode,
    :departureAirportCode,
    :departureDate,
    :flightNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      arrivalAirportCode: :string,
      basicFareCode: :string,
      carrierCode: :string,
      departureAirportCode: :string,
      departureDate: :string,
      flightNumber: :string
    ]
  end
end
