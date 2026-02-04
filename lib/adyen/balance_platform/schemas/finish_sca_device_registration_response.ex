defmodule Adyen.BalancePlatform.FinishScaDeviceRegistrationResponse do
  @moduledoc """
  Provides struct and type for a FinishScaDeviceRegistrationResponse
  """

  @type t :: %__MODULE__{scaDevice: Adyen.BalancePlatform.ScaDevice.t() | nil}

  defstruct [:scaDevice]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaDevice: {Adyen.BalancePlatform.ScaDevice, :t}]
  end
end
