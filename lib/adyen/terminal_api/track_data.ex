defmodule Adyen.TerminalAPI.TrackData do
  @moduledoc """
  Provides struct and type for a TrackData
  """

  @type t :: %__MODULE__{
          TrackFormat: String.t() | nil,
          TrackNumb: integer | nil,
          TrackValue: String.t()
        }

  defstruct [:TrackFormat, :TrackNumb, :TrackValue]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [TrackFormat: {:enum, ["AAMVA", "ISO"]}, TrackNumb: :integer, TrackValue: :string]
  end
end
