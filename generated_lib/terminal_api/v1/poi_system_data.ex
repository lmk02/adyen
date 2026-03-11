defmodule Adyen.TerminalAPI.V1.POISystemData do
  @moduledoc """
  Provides struct and type for a POISystemData
  """

  @type t :: %__MODULE__{
          DateTime: DateTime.t(),
          POISoftware: Adyen.TerminalAPI.V1.POISoftware.t(),
          POIStatus: Adyen.TerminalAPI.V1.POIStatus.t() | nil
        }

  defstruct [:DateTime, :POISoftware, :POIStatus]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DateTime: {:string, "date-time"},
      POISoftware: {Adyen.TerminalAPI.V1.POISoftware, :t},
      POIStatus: {Adyen.TerminalAPI.V1.POIStatus, :t}
    ]
  end
end
