defmodule Adyen.TerminalAPI.V1.GeographicCoordinates do
  @moduledoc """
  Provides struct and type for a GeographicCoordinates
  """

  @type t :: %__MODULE__{Latitude: String.t(), Longitude: String.t()}

  defstruct [:Latitude, :Longitude]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Latitude: :string, Longitude: :string]
  end
end
