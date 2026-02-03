defmodule Adyen.BalancePlatform.WalletProviderDeviceType do
  @moduledoc """
  Provides struct and type for a WalletProviderDeviceType
  """

  @type t :: %__MODULE__{operation: String.t(), value: [String.t()] | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      operation: :string,
      value: [
        enum: [
          "CARD",
          "MOBILE_PHONE",
          "OTHER",
          "PC",
          "TABLET_OR_EREADER",
          "UNKNOWN",
          "WATCH_OR_WRISTBAND",
          "WEARABLE"
        ]
      ]
    ]
  end
end
