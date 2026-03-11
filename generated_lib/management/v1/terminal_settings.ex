defmodule Adyen.Management.V1.TerminalSettings do
  @moduledoc """
  Provides struct and type for a TerminalSettings
  """

  @type t :: %__MODULE__{
          cardholderReceipt: Adyen.Management.V1.CardholderReceipt.t() | nil,
          connectivity: Adyen.Management.V1.Connectivity.t() | nil,
          gratuities: [Adyen.Management.V1.Gratuity.t()] | nil,
          hardware: Adyen.Management.V1.Hardware.t() | nil,
          homeScreen: Adyen.Management.V1.HomeScreenSettings.t() | nil,
          kioskMode: Adyen.Management.V1.KioskModeSettings.t() | nil,
          localization: Adyen.Management.V1.Localization.t() | nil,
          moto: Adyen.Management.V1.Moto.t() | nil,
          nexo: Adyen.Management.V1.Nexo.t() | nil,
          offlineProcessing: Adyen.Management.V1.OfflineProcessing.t() | nil,
          opi: Adyen.Management.V1.Opi.t() | nil,
          passcodes: Adyen.Management.V1.Passcodes.t() | nil,
          payAtTable: Adyen.Management.V1.PayAtTable.t() | nil,
          payment: Adyen.Management.V1.Payment.t() | nil,
          receiptOptions: Adyen.Management.V1.ReceiptOptions.t() | nil,
          receiptPrinting: Adyen.Management.V1.ReceiptPrinting.t() | nil,
          refunds: Adyen.Management.V1.Refunds.t() | nil,
          signature: Adyen.Management.V1.Signature.t() | nil,
          standalone: Adyen.Management.V1.Standalone.t() | nil,
          storeAndForward: Adyen.Management.V1.StoreAndForward.t() | nil,
          surcharge: Adyen.Management.V1.Surcharge.t() | nil,
          tapToPay: Adyen.Management.V1.TapToPay.t() | nil,
          terminalInstructions: Adyen.Management.V1.TerminalInstructions.t() | nil,
          timeouts: Adyen.Management.V1.Timeouts.t() | nil,
          wifiProfiles: Adyen.Management.V1.WifiProfiles.t() | nil
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
      cardholderReceipt: {Adyen.Management.V1.CardholderReceipt, :t},
      connectivity: {Adyen.Management.V1.Connectivity, :t},
      gratuities: [{Adyen.Management.V1.Gratuity, :t}],
      hardware: {Adyen.Management.V1.Hardware, :t},
      homeScreen: {Adyen.Management.V1.HomeScreenSettings, :t},
      kioskMode: {Adyen.Management.V1.KioskModeSettings, :t},
      localization: {Adyen.Management.V1.Localization, :t},
      moto: {Adyen.Management.V1.Moto, :t},
      nexo: {Adyen.Management.V1.Nexo, :t},
      offlineProcessing: {Adyen.Management.V1.OfflineProcessing, :t},
      opi: {Adyen.Management.V1.Opi, :t},
      passcodes: {Adyen.Management.V1.Passcodes, :t},
      payAtTable: {Adyen.Management.V1.PayAtTable, :t},
      payment: {Adyen.Management.V1.Payment, :t},
      receiptOptions: {Adyen.Management.V1.ReceiptOptions, :t},
      receiptPrinting: {Adyen.Management.V1.ReceiptPrinting, :t},
      refunds: {Adyen.Management.V1.Refunds, :t},
      signature: {Adyen.Management.V1.Signature, :t},
      standalone: {Adyen.Management.V1.Standalone, :t},
      storeAndForward: {Adyen.Management.V1.StoreAndForward, :t},
      surcharge: {Adyen.Management.V1.Surcharge, :t},
      tapToPay: {Adyen.Management.V1.TapToPay, :t},
      terminalInstructions: {Adyen.Management.V1.TerminalInstructions, :t},
      timeouts: {Adyen.Management.V1.Timeouts, :t},
      wifiProfiles: {Adyen.Management.V1.WifiProfiles, :t}
    ]
  end
end
