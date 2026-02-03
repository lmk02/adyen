defmodule Adyen.BalancePlatform.FinishScaDeviceRegistrationResponse do
  @moduledoc """
  Provides struct and type for a FinishScaDeviceRegistrationResponse
  """

  alias Adyen.BalancePlatform.ScaDevice

  @type t :: %__MODULE__{scaDevice: ScaDevice.t() | nil}

  defstruct [:scaDevice]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaDevice: {ScaDevice, :t}]
  end
end
