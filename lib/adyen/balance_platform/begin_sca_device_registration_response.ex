defmodule Adyen.BalancePlatform.BeginScaDeviceRegistrationResponse do
  @moduledoc """
  Provides struct and type for a BeginScaDeviceRegistrationResponse
  """

  alias Adyen.BalancePlatform.ScaDevice

  @type t :: %__MODULE__{
          scaDevice: ScaDevice.t() | nil,
          sdkInput: String.t() | nil
        }

  defstruct [:scaDevice, :sdkInput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaDevice: {ScaDevice, :t}, sdkInput: :string]
  end
end
