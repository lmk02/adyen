defmodule Adyen.Management.TerminalConnectivityBluetooth do
  @moduledoc """
  Provides struct and type for a TerminalConnectivityBluetooth
  """

  @type t :: %__MODULE__{ipAddress: String.t() | nil, macAddress: String.t() | nil}

  defstruct [:ipAddress, :macAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ipAddress: :string, macAddress: :string]
  end
end
