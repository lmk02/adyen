defmodule Adyen.Transfers.Airline do
  @moduledoc """
  Provides struct and type for a Airline
  """

  @type t :: %__MODULE__{legs: [Adyen.Transfers.Leg.t()] | nil, ticketNumber: String.t() | nil}

  defstruct [:legs, :ticketNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [legs: [{Adyen.Transfers.Leg, :t}], ticketNumber: :string]
  end
end
