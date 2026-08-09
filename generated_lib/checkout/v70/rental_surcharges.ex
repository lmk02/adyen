defmodule Adyen.Checkout.V70.RentalSurcharges do
  @moduledoc """
  Provides struct and type for a RentalSurcharges
  """

  @type t :: %__MODULE__{
          fuel: integer | nil,
          insurance: integer | nil,
          oneWayDropOff: integer | nil
        }

  defstruct [:fuel, :insurance, :oneWayDropOff]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      fuel: {:integer, "int64"},
      insurance: {:integer, "int64"},
      oneWayDropOff: {:integer, "int64"}
    ]
  end
end
