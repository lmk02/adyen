defmodule Adyen.CloudDevice.DeviceStatusResponse do
  @moduledoc """
  Provides struct and type for a DeviceStatusResponse
  """

  @type t :: %__MODULE__{deviceId: String.t() | nil, status: String.t() | nil}

  defstruct [:deviceId, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [deviceId: :string, status: {:enum, ["ONLINE", "OFFLINE"]}]
  end
end
