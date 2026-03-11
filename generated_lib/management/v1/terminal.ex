defmodule Adyen.Management.V1.Terminal do
  @moduledoc """
  Provides struct and type for a Terminal
  """

  @type t :: %__MODULE__{
          assigned: boolean | nil,
          bluetoothIp: String.t() | nil,
          bluetoothMac: String.t() | nil,
          city: String.t() | nil,
          companyAccount: String.t() | nil,
          countryCode: String.t() | nil,
          deviceModel: String.t() | nil,
          ethernetIp: String.t() | nil,
          ethernetMac: String.t() | nil,
          firmwareVersion: String.t() | nil,
          iccid: String.t() | nil,
          id: String.t() | nil,
          lastActivityDateTime: DateTime.t() | nil,
          lastTransactionDateTime: DateTime.t() | nil,
          linkNegotiation: String.t() | nil,
          serialNumber: String.t() | nil,
          simStatus: String.t() | nil,
          status: String.t() | nil,
          storeStatus: String.t() | nil,
          wifiIp: String.t() | nil,
          wifiMac: String.t() | nil,
          wifiSsid: String.t() | nil
        }

  defstruct [
    :assigned,
    :bluetoothIp,
    :bluetoothMac,
    :city,
    :companyAccount,
    :countryCode,
    :deviceModel,
    :ethernetIp,
    :ethernetMac,
    :firmwareVersion,
    :iccid,
    :id,
    :lastActivityDateTime,
    :lastTransactionDateTime,
    :linkNegotiation,
    :serialNumber,
    :simStatus,
    :status,
    :storeStatus,
    :wifiIp,
    :wifiMac,
    :wifiSsid
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assigned: :boolean,
      bluetoothIp: :string,
      bluetoothMac: :string,
      city: :string,
      companyAccount: :string,
      countryCode: :string,
      deviceModel: :string,
      ethernetIp: :string,
      ethernetMac: :string,
      firmwareVersion: :string,
      iccid: :string,
      id: :string,
      lastActivityDateTime: {:string, "date-time"},
      lastTransactionDateTime: {:string, "date-time"},
      linkNegotiation: :string,
      serialNumber: :string,
      simStatus: :string,
      status: :string,
      storeStatus: :string,
      wifiIp: :string,
      wifiMac: :string,
      wifiSsid: :string
    ]
  end
end
