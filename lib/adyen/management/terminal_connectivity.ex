defmodule Adyen.Management.TerminalConnectivity do
  @moduledoc """
  Provides struct and type for a TerminalConnectivity
  """

  @type t :: %__MODULE__{
          bluetooth: Adyen.Management.TerminalConnectivityBluetooth.t() | nil,
          cellular: Adyen.Management.TerminalConnectivityCellular.t() | nil,
          ethernet: Adyen.Management.TerminalConnectivityEthernet.t() | nil,
          wifi: Adyen.Management.TerminalConnectivityWifi.t() | nil
        }

  defstruct [:bluetooth, :cellular, :ethernet, :wifi]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bluetooth: {Adyen.Management.TerminalConnectivityBluetooth, :t},
      cellular: {Adyen.Management.TerminalConnectivityCellular, :t},
      ethernet: {Adyen.Management.TerminalConnectivityEthernet, :t},
      wifi: {Adyen.Management.TerminalConnectivityWifi, :t}
    ]
  end
end
