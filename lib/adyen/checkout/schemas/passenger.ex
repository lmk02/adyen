defmodule Adyen.Checkout.Passenger do
  @moduledoc """
  Provides struct and type for a Passenger
  """

  @type t :: %__MODULE__{
          dateOfBirth: Date.t() | nil,
          firstName: String.t() | nil,
          lastName: String.t() | nil,
          phoneNumber: String.t() | nil,
          travellerType: String.t() | nil
        }

  defstruct [:dateOfBirth, :firstName, :lastName, :phoneNumber, :travellerType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dateOfBirth: {:string, "date"},
      firstName: :string,
      lastName: :string,
      phoneNumber: :string,
      travellerType: :string
    ]
  end
end
