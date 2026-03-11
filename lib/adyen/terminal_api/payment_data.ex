defmodule Adyen.TerminalAPI.PaymentData do
  @moduledoc """
  Provides struct and type for a PaymentData
  """

  @type t :: %__MODULE__{
          CardAcquisitionReference: Adyen.TerminalAPI.TransactionIDType.t() | nil,
          Instalment: Adyen.TerminalAPI.Instalment.t() | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.PaymentInstrumentData.t() | nil,
          PaymentType: String.t() | nil,
          RequestedValidityDate: Date.t() | nil,
          SplitPaymentFlag: boolean | nil
        }

  defstruct [
    :CardAcquisitionReference,
    :Instalment,
    :PaymentInstrumentData,
    :PaymentType,
    :RequestedValidityDate,
    :SplitPaymentFlag
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionReference: {Adyen.TerminalAPI.TransactionIDType, :t},
      Instalment: {Adyen.TerminalAPI.Instalment, :t},
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
      RequestedValidityDate: {:string, "date"},
      SplitPaymentFlag: :boolean
    ]
  end
end
