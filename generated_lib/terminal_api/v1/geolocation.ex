defmodule Adyen.TerminalAPI.V1.Geolocation do
  @moduledoc """
  Provides struct and type for a Geolocation
  """

  @type t :: %__MODULE__{
          GeographicCoordinates: Adyen.TerminalAPI.V1.GeographicCoordinates.t() | nil,
          UTMCoordinates: Adyen.TerminalAPI.V1.UTMCoordinates.t() | nil
        }

  defstruct [:GeographicCoordinates, :UTMCoordinates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      GeographicCoordinates: {Adyen.TerminalAPI.V1.GeographicCoordinates, :t},
      UTMCoordinates: {Adyen.TerminalAPI.V1.UTMCoordinates, :t}
    ]
  end
end
