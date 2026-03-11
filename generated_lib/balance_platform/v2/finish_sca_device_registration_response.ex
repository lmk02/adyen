defmodule Adyen.BalancePlatform.V2.FinishScaDeviceRegistrationResponse do
  @moduledoc """
  Provides struct and type for a FinishScaDeviceRegistrationResponse
  """

  @type t :: %__MODULE__{scaDevice: Adyen.BalancePlatform.V2.ScaDevice.t() | nil}

  defstruct [:scaDevice]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaDevice: {Adyen.BalancePlatform.V2.ScaDevice, :t}]
  end
end
