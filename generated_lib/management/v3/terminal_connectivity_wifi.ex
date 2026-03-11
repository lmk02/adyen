defmodule Adyen.Management.V3.TerminalConnectivityWifi do
  @moduledoc """
  Provides struct and type for a TerminalConnectivityWifi
  """

  @type t :: %__MODULE__{
          ipAddress: String.t() | nil,
          macAddress: String.t() | nil,
          ssid: String.t() | nil
        }

  defstruct [:ipAddress, :macAddress, :ssid]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ipAddress: :string, macAddress: :string, ssid: :string]
  end
end
