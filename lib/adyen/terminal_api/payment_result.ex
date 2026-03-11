defmodule Adyen.TerminalAPI.PaymentResult do
  @moduledoc """
  Provides struct and type for a PaymentResult
  """

  @type t :: %__MODULE__{
          AmountsResp: Adyen.TerminalAPI.AmountsResp.t() | nil,
          AuthenticationMethod: [String.t()] | nil,
          CapturedSignature: Adyen.TerminalAPI.CapturedSignature.t() | nil,
          CurrencyConversion: [Adyen.TerminalAPI.CurrencyConversion.t()] | nil,
          CustomerLanguage: String.t() | nil,
          Instalment: Adyen.TerminalAPI.Instalment.t() | nil,
          MerchantOverrideFlag: boolean | nil,
          OnlineFlag: boolean | nil,
          PaymentAcquirerData: Adyen.TerminalAPI.PaymentAcquirerData.t() | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.PaymentInstrumentData.t() | nil,
          PaymentType: String.t() | nil,
          ProtectedSignature: String.t() | nil,
          ValidityDate: Date.t() | nil
        }

  defstruct [
    :AmountsResp,
    :AuthenticationMethod,
    :CapturedSignature,
    :CurrencyConversion,
    :CustomerLanguage,
    :Instalment,
    :MerchantOverrideFlag,
    :OnlineFlag,
    :PaymentAcquirerData,
    :PaymentInstrumentData,
    :PaymentType,
    :ProtectedSignature,
    :ValidityDate
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AmountsResp: {Adyen.TerminalAPI.AmountsResp, :t},
      AuthenticationMethod: [
        enum: [
          "Bypass",
          "ManualVerification",
          "MerchantAuthentication",
          "OfflinePIN",
          "OnlinePIN",
          "PaperSignature",
          "SecureCertificate",
          "SecureNoCertificate",
          "SecuredChannel",
          "SignatureCapture",
          "UnknownMethod"
        ]
      ],
      CapturedSignature: {Adyen.TerminalAPI.CapturedSignature, :t},
      CurrencyConversion: [{Adyen.TerminalAPI.CurrencyConversion, :t}],
      CustomerLanguage: :string,
      Instalment: {Adyen.TerminalAPI.Instalment, :t},
      MerchantOverrideFlag: :boolean,
      OnlineFlag: :boolean,
      PaymentAcquirerData: {Adyen.TerminalAPI.PaymentAcquirerData, :t},
      PaymentInstrumentData: {Adyen.TerminalAPI.PaymentInstrumentData, :t},
      PaymentType:
        {:enum,
         [
           "CashAdvance",
           "CashDeposit",
           "Completion",
           "FirstReservation",
           "Instalment",
           "IssuerInstalment",
           "Normal",
           "OneTimeReservation",
           "PaidOut",
           "Recurring",
           "Refund",
           "UpdateReservation"
         ]},
      ProtectedSignature: :string,
      ValidityDate: {:string, "date"}
    ]
  end
end
