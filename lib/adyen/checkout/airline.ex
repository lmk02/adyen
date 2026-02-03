defmodule Adyen.Checkout.Airline do
  @moduledoc """
  Provides struct and type for a Airline
  """

  alias Adyen.Checkout.Agency
  alias Adyen.Checkout.Leg
  alias Adyen.Checkout.Passenger
  alias Adyen.Checkout.Ticket
  alias Adyen.Checkout.TravelAgency

  @type t :: %__MODULE__{
          agency: Agency.t() | nil,
          boardingFee: integer | nil,
          code: String.t() | nil,
          computerizedReservationSystem: String.t() | nil,
          customerReferenceNumber: String.t() | nil,
          designatorCode: String.t() | nil,
          documentType: String.t() | nil,
          flightDate: DateTime.t() | nil,
          legs: [Leg.t()] | nil,
          passengerName: String.t(),
          passengers: [Passenger.t()] | nil,
          ticket: Ticket.t() | nil,
          travelAgency: TravelAgency.t() | nil
        }

  defstruct [
    :agency,
    :boardingFee,
    :code,
    :computerizedReservationSystem,
    :customerReferenceNumber,
    :designatorCode,
    :documentType,
    :flightDate,
    :legs,
    :passengerName,
    :passengers,
    :ticket,
    :travelAgency
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agency: {Agency, :t},
      boardingFee: {:integer, "int64"},
      code: :string,
      computerizedReservationSystem: :string,
      customerReferenceNumber: :string,
      designatorCode: :string,
      documentType: :string,
      flightDate: {:string, "date-time"},
      legs: [{Leg, :t}],
      passengerName: :string,
      passengers: [{Passenger, :t}],
      ticket: {Ticket, :t},
      travelAgency: {TravelAgency, :t}
    ]
  end
end
