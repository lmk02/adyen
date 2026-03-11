defmodule Adyen.Management.TerminalSettings do
  @moduledoc """
  Provides struct and type for a TerminalSettings
  """

  @type t :: %__MODULE__{
          cardholderReceipt: Adyen.Management.CardholderReceipt.t() | nil,
          connectivity: Adyen.Management.Connectivity.t() | nil,
          gratuities: [Adyen.Management.Gratuity.t()] | nil,
          hardware: Adyen.Management.Hardware.t() | nil,
          homeScreen: Adyen.Management.HomeScreenSettings.t() | nil,
          kioskMode: Adyen.Management.KioskModeSettings.t() | nil,
          localization: Adyen.Management.Localization.t() | nil,
          moto: Adyen.Management.Moto.t() | nil,
          nexo: Adyen.Management.Nexo.t() | nil,
          offlineProcessing: Adyen.Management.OfflineProcessing.t() | nil,
          opi: Adyen.Management.Opi.t() | nil,
          passcodes: Adyen.Management.Passcodes.t() | nil,
          payAtTable: Adyen.Management.PayAtTable.t() | nil,
          payment: Adyen.Management.Payment.t() | nil,
          receiptOptions: Adyen.Management.ReceiptOptions.t() | nil,
          receiptPrinting: Adyen.Management.ReceiptPrinting.t() | nil,
          refunds: Adyen.Management.Refunds.t() | nil,
          signature: Adyen.Management.Signature.t() | nil,
          standalone: Adyen.Management.Standalone.t() | nil,
          storeAndForward: Adyen.Management.StoreAndForward.t() | nil,
          surcharge: Adyen.Management.Surcharge.t() | nil,
          tapToPay: Adyen.Management.TapToPay.t() | nil,
          terminalInstructions: Adyen.Management.TerminalInstructions.t() | nil,
          timeouts: Adyen.Management.Timeouts.t() | nil,
          wifiProfiles: Adyen.Management.WifiProfiles.t() | nil
        }

  defstruct [
    :cardholderReceipt,
    :connectivity,
    :gratuities,
    :hardware,
    :homeScreen,
    :kioskMode,
    :localization,
    :moto,
    :nexo,
    :offlineProcessing,
    :opi,
    :passcodes,
    :payAtTable,
    :payment,
    :receiptOptions,
    :receiptPrinting,
    :refunds,
    :signature,
    :standalone,
    :storeAndForward,
    :surcharge,
    :tapToPay,
    :terminalInstructions,
    :timeouts,
    :wifiProfiles
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardholderReceipt: {Adyen.Management.CardholderReceipt, :t},
      connectivity: {Adyen.Management.Connectivity, :t},
      gratuities: [{Adyen.Management.Gratuity, :t}],
      hardware: {Adyen.Management.Hardware, :t},
      homeScreen: {Adyen.Management.HomeScreenSettings, :t},
      kioskMode: {Adyen.Management.KioskModeSettings, :t},
      localization: {Adyen.Management.Localization, :t},
      moto: {Adyen.Management.Moto, :t},
      nexo: {Adyen.Management.Nexo, :t},
      offlineProcessing: {Adyen.Management.OfflineProcessing, :t},
      opi: {Adyen.Management.Opi, :t},
      passcodes: {Adyen.Management.Passcodes, :t},
      payAtTable: {Adyen.Management.PayAtTable, :t},
      payment: {Adyen.Management.Payment, :t},
      receiptOptions: {Adyen.Management.ReceiptOptions, :t},
      receiptPrinting: {Adyen.Management.ReceiptPrinting, :t},
      refunds: {Adyen.Management.Refunds, :t},
      signature: {Adyen.Management.Signature, :t},
      standalone: {Adyen.Management.Standalone, :t},
      storeAndForward: {Adyen.Management.StoreAndForward, :t},
      surcharge: {Adyen.Management.Surcharge, :t},
      tapToPay: {Adyen.Management.TapToPay, :t},
      terminalInstructions: {Adyen.Management.TerminalInstructions, :t},
      timeouts: {Adyen.Management.Timeouts, :t},
      wifiProfiles: {Adyen.Management.WifiProfiles, :t}
    ]
  end
end
