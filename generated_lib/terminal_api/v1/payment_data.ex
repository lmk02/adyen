defmodule Adyen.TerminalAPI.V1.PaymentData do
  @moduledoc """
  Provides struct and type for a PaymentData
  """

  @type t :: %__MODULE__{
          CardAcquisitionReference: Adyen.TerminalAPI.V1.TransactionIDType.t() | nil,
          Instalment: Adyen.TerminalAPI.V1.Instalment.t() | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.V1.PaymentInstrumentData.t() | nil,
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
      CardAcquisitionReference: {Adyen.TerminalAPI.V1.TransactionIDType, :t},
      Instalment: {Adyen.TerminalAPI.V1.Instalment, :t},
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
      RequestedValidityDate: {:string, "date"},
      SplitPaymentFlag: :boolean
    ]
  end
end
