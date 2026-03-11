defmodule Adyen.Management.V3.TerminalConnectivityEthernet do
  @moduledoc """
  Provides struct and type for a TerminalConnectivityEthernet
  """

  @type t :: %__MODULE__{
          ipAddress: String.t() | nil,
          linkNegotiation: String.t() | nil,
          macAddress: String.t() | nil
        }

  defstruct [:ipAddress, :linkNegotiation, :macAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ipAddress: :string, linkNegotiation: :string, macAddress: :string]
  end
end
