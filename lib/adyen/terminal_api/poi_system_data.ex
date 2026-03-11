defmodule Adyen.TerminalAPI.POISystemData do
  @moduledoc """
  Provides struct and type for a POISystemData
  """

  @type t :: %__MODULE__{
          DateTime: DateTime.t(),
          POISoftware: Adyen.TerminalAPI.POISoftware.t(),
          POIStatus: Adyen.TerminalAPI.POIStatus.t() | nil
        }

  defstruct [:DateTime, :POISoftware, :POIStatus]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DateTime: {:string, "date-time"},
      POISoftware: {Adyen.TerminalAPI.POISoftware, :t},
      POIStatus: {Adyen.TerminalAPI.POIStatus, :t}
    ]
  end
end
