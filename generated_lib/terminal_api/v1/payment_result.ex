defmodule Adyen.TerminalAPI.V1.PaymentResult do
  @moduledoc """
  Provides struct and type for a PaymentResult
  """

  @type t :: %__MODULE__{
          AmountsResp: Adyen.TerminalAPI.V1.AmountsResp.t() | nil,
          AuthenticationMethod: [String.t()] | nil,
          CapturedSignature: Adyen.TerminalAPI.V1.CapturedSignature.t() | nil,
          CurrencyConversion: [Adyen.TerminalAPI.V1.CurrencyConversion.t()] | nil,
          CustomerLanguage: String.t() | nil,
          Instalment: Adyen.TerminalAPI.V1.Instalment.t() | nil,
          MerchantOverrideFlag: boolean | nil,
          OnlineFlag: boolean | nil,
          PaymentAcquirerData: Adyen.TerminalAPI.V1.PaymentAcquirerData.t() | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.V1.PaymentInstrumentData.t() | nil,
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
      AmountsResp: {Adyen.TerminalAPI.V1.AmountsResp, :t},
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
      CapturedSignature: {Adyen.TerminalAPI.V1.CapturedSignature, :t},
      CurrencyConversion: [{Adyen.TerminalAPI.V1.CurrencyConversion, :t}],
      CustomerLanguage: :string,
      Instalment: {Adyen.TerminalAPI.V1.Instalment, :t},
      MerchantOverrideFlag: :boolean,
      OnlineFlag: :boolean,
      PaymentAcquirerData: {Adyen.TerminalAPI.V1.PaymentAcquirerData, :t},
      PaymentInstrumentData: {Adyen.TerminalAPI.V1.PaymentInstrumentData, :t},
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
