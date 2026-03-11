defmodule Adyen.CloudDevice.ConnectedDevicesResponse do
  @moduledoc """
  Provides struct and type for a ConnectedDevicesResponse
  """

  @type t :: %__MODULE__{uniqueDeviceIds: [String.t()] | nil}

  defstruct [:uniqueDeviceIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [uniqueDeviceIds: [:string]]
  end
end
