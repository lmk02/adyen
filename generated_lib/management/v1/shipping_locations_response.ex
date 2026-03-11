defmodule Adyen.Management.V1.ShippingLocationsResponse do
  @moduledoc """
  Provides struct and type for a ShippingLocationsResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.V1.ShippingLocation.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.V1.ShippingLocation, :t}]]
  end
end
