defmodule Adyen.BalancePlatform.V2.BeginScaDeviceRegistrationResponse do
  @moduledoc """
  Provides struct and type for a BeginScaDeviceRegistrationResponse
  """

  @type t :: %__MODULE__{
          scaDevice: Adyen.BalancePlatform.V2.ScaDevice.t() | nil,
          sdkInput: String.t() | nil
        }

  defstruct [:scaDevice, :sdkInput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaDevice: {Adyen.BalancePlatform.V2.ScaDevice, :t}, sdkInput: :string]
  end
end
