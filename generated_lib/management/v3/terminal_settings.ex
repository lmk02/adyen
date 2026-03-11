defmodule Adyen.Management.V3.TerminalSettings do
  @moduledoc """
  Provides struct and type for a TerminalSettings
  """

  @type t :: %__MODULE__{
          cardholderReceipt: Adyen.Management.V3.CardholderReceipt.t() | nil,
          connectivity: Adyen.Management.V3.Connectivity.t() | nil,
          gratuities: [Adyen.Management.V3.Gratuity.t()] | nil,
          hardware: Adyen.Management.V3.Hardware.t() | nil,
          homeScreen: Adyen.Management.V3.HomeScreenSettings.t() | nil,
          kioskMode: Adyen.Management.V3.KioskModeSettings.t() | nil,
          localization: Adyen.Management.V3.Localization.t() | nil,
          moto: Adyen.Management.V3.Moto.t() | nil,
          nexo: Adyen.Management.V3.Nexo.t() | nil,
          offlineProcessing: Adyen.Management.V3.OfflineProcessing.t() | nil,
          opi: Adyen.Management.V3.Opi.t() | nil,
          passcodes: Adyen.Management.V3.Passcodes.t() | nil,
          payAtTable: Adyen.Management.V3.PayAtTable.t() | nil,
          payment: Adyen.Management.V3.Payment.t() | nil,
          receiptOptions: Adyen.Management.V3.ReceiptOptions.t() | nil,
          receiptPrinting: Adyen.Management.V3.ReceiptPrinting.t() | nil,
          refunds: Adyen.Management.V3.Refunds.t() | nil,
          signature: Adyen.Management.V3.Signature.t() | nil,
          standalone: Adyen.Management.V3.Standalone.t() | nil,
          storeAndForward: Adyen.Management.V3.StoreAndForward.t() | nil,
          surcharge: Adyen.Management.V3.Surcharge.t() | nil,
          tapToPay: Adyen.Management.V3.TapToPay.t() | nil,
          terminalInstructions: Adyen.Management.V3.TerminalInstructions.t() | nil,
          timeouts: Adyen.Management.V3.Timeouts.t() | nil,
          wifiProfiles: Adyen.Management.V3.WifiProfiles.t() | nil
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
      cardholderReceipt: {Adyen.Management.V3.CardholderReceipt, :t},
      connectivity: {Adyen.Management.V3.Connectivity, :t},
      gratuities: [{Adyen.Management.V3.Gratuity, :t}],
      hardware: {Adyen.Management.V3.Hardware, :t},
      homeScreen: {Adyen.Management.V3.HomeScreenSettings, :t},
      kioskMode: {Adyen.Management.V3.KioskModeSettings, :t},
      localization: {Adyen.Management.V3.Localization, :t},
      moto: {Adyen.Management.V3.Moto, :t},
      nexo: {Adyen.Management.V3.Nexo, :t},
      offlineProcessing: {Adyen.Management.V3.OfflineProcessing, :t},
      opi: {Adyen.Management.V3.Opi, :t},
      passcodes: {Adyen.Management.V3.Passcodes, :t},
      payAtTable: {Adyen.Management.V3.PayAtTable, :t},
      payment: {Adyen.Management.V3.Payment, :t},
      receiptOptions: {Adyen.Management.V3.ReceiptOptions, :t},
      receiptPrinting: {Adyen.Management.V3.ReceiptPrinting, :t},
      refunds: {Adyen.Management.V3.Refunds, :t},
      signature: {Adyen.Management.V3.Signature, :t},
      standalone: {Adyen.Management.V3.Standalone, :t},
      storeAndForward: {Adyen.Management.V3.StoreAndForward, :t},
      surcharge: {Adyen.Management.V3.Surcharge, :t},
      tapToPay: {Adyen.Management.V3.TapToPay, :t},
      terminalInstructions: {Adyen.Management.V3.TerminalInstructions, :t},
      timeouts: {Adyen.Management.V3.Timeouts, :t},
      wifiProfiles: {Adyen.Management.V3.WifiProfiles, :t}
    ]
  end
end
