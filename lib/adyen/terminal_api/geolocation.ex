defmodule Adyen.TerminalAPI.Geolocation do
  @moduledoc """
  Provides struct and type for a Geolocation
  """

  @type t :: %__MODULE__{
          GeographicCoordinates: Adyen.TerminalAPI.GeographicCoordinates.t() | nil,
          UTMCoordinates: Adyen.TerminalAPI.UTMCoordinates.t() | nil
        }

  defstruct [:GeographicCoordinates, :UTMCoordinates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      GeographicCoordinates: {Adyen.TerminalAPI.GeographicCoordinates, :t},
      UTMCoordinates: {Adyen.TerminalAPI.UTMCoordinates, :t}
    ]
  end
end
