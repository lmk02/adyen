defmodule Adyen.TerminalAPI.V1.UTMCoordinates do
  @moduledoc """
  Provides struct and type for a UTMCoordinates
  """

  @type t :: %__MODULE__{UTMEastward: String.t(), UTMNorthward: String.t(), UTMZone: String.t()}

  defstruct [:UTMEastward, :UTMNorthward, :UTMZone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [UTMEastward: :string, UTMNorthward: :string, UTMZone: :string]
  end
end
