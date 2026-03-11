defmodule Adyen.Management.V3.TerminalConnectivity do
  @moduledoc """
  Provides struct and type for a TerminalConnectivity
  """

  @type t :: %__MODULE__{
          bluetooth: Adyen.Management.V3.TerminalConnectivityBluetooth.t() | nil,
          cellular: Adyen.Management.V3.TerminalConnectivityCellular.t() | nil,
          ethernet: Adyen.Management.V3.TerminalConnectivityEthernet.t() | nil,
          wifi: Adyen.Management.V3.TerminalConnectivityWifi.t() | nil
        }

  defstruct [:bluetooth, :cellular, :ethernet, :wifi]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bluetooth: {Adyen.Management.V3.TerminalConnectivityBluetooth, :t},
      cellular: {Adyen.Management.V3.TerminalConnectivityCellular, :t},
      ethernet: {Adyen.Management.V3.TerminalConnectivityEthernet, :t},
      wifi: {Adyen.Management.V3.TerminalConnectivityWifi, :t}
    ]
  end
end
