defmodule Adyen.TerminalAPI.MobileData do
  @moduledoc """
  Provides struct and type for a MobileData
  """

  @type t :: %__MODULE__{
          Geolocation: Adyen.TerminalAPI.Geolocation.t() | nil,
          MaskedMSISDN: integer | nil,
          MobileCountryCode: integer | nil,
          MobileNetworkCode: integer | nil,
          ProtectedMobileData: String.t() | nil,
          SensitiveMobileData: Adyen.TerminalAPI.SensitiveMobileData.t() | nil
        }

  defstruct [
    :Geolocation,
    :MaskedMSISDN,
    :MobileCountryCode,
    :MobileNetworkCode,
    :ProtectedMobileData,
    :SensitiveMobileData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Geolocation: {Adyen.TerminalAPI.Geolocation, :t},
      MaskedMSISDN: :integer,
      MobileCountryCode: :integer,
      MobileNetworkCode: :integer,
      ProtectedMobileData: :string,
      SensitiveMobileData: {Adyen.TerminalAPI.SensitiveMobileData, :t}
    ]
  end
end
