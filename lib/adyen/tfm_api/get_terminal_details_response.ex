defmodule Adyen.TfmAPI.GetTerminalDetailsResponse do
  @moduledoc """
  Provides struct and type for a GetTerminalDetailsResponse
  """

  @type t :: %__MODULE__{
          bluetoothIp: String.t() | nil,
          bluetoothMac: String.t() | nil,
          companyAccount: String.t(),
          country: String.t() | nil,
          deviceModel: String.t() | nil,
          dhcpEnabled: boolean | nil,
          displayLabel: String.t() | nil,
          ethernetIp: String.t() | nil,
          ethernetMac: String.t() | nil,
          firmwareVersion: String.t() | nil,
          iccid: String.t() | nil,
          lastActivityDateTime: DateTime.t() | nil,
          lastTransactionDateTime: DateTime.t() | nil,
          linkNegotiation: String.t() | nil,
          merchantAccount: String.t() | nil,
          merchantInventory: boolean | nil,
          permanentTerminalId: String.t() | nil,
          serialNumber: String.t() | nil,
          simStatus: String.t() | nil,
          store: String.t() | nil,
          storeDetails: Adyen.TfmAPI.Store.t() | nil,
          terminal: String.t(),
          terminalStatus: String.t() | nil,
          wifiIp: String.t() | nil,
          wifiMac: String.t() | nil
        }

  defstruct [
    :bluetoothIp,
    :bluetoothMac,
    :companyAccount,
    :country,
    :deviceModel,
    :dhcpEnabled,
    :displayLabel,
    :ethernetIp,
    :ethernetMac,
    :firmwareVersion,
    :iccid,
    :lastActivityDateTime,
    :lastTransactionDateTime,
    :linkNegotiation,
    :merchantAccount,
    :merchantInventory,
    :permanentTerminalId,
    :serialNumber,
    :simStatus,
    :store,
    :storeDetails,
    :terminal,
    :terminalStatus,
    :wifiIp,
    :wifiMac
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bluetoothIp: :string,
      bluetoothMac: :string,
      companyAccount: :string,
      country: :string,
      deviceModel: :string,
      dhcpEnabled: :boolean,
      displayLabel: :string,
      ethernetIp: :string,
      ethernetMac: :string,
      firmwareVersion: :string,
      iccid: :string,
      lastActivityDateTime: {:string, "date-time"},
      lastTransactionDateTime: {:string, "date-time"},
      linkNegotiation: :string,
      merchantAccount: :string,
      merchantInventory: :boolean,
      permanentTerminalId: :string,
      serialNumber: :string,
      simStatus: :string,
      store: :string,
      storeDetails: {Adyen.TfmAPI.Store, :t},
      terminal: :string,
      terminalStatus:
        {:enum,
         [
           "OnlineLast1Day",
           "OnlineLast2Days",
           "OnlineLast3Days",
           "OnlineLast4Days",
           "OnlineLast5Days",
           "OnlineLast6Days",
           "OnlineLast7Days",
           "OnlineToday",
           "ReAssignToInventoryPending",
           "ReAssignToMerchantInventoryPending",
           "ReAssignToStorePending",
           "SwitchedOff"
         ]},
      wifiIp: :string,
      wifiMac: :string
    ]
  end
end
