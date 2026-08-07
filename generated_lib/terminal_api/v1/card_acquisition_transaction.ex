defmodule Adyen.TerminalAPI.V1.CardAcquisitionTransaction do
  @moduledoc """
  Provides struct and type for a CardAcquisitionTransaction
  """

  @type t :: %__MODULE__{
          AllowedLoyaltyBrand: [String.t()] | nil,
          AllowedPaymentBrand: [String.t()] | nil,
          CashBackFlag: boolean | nil,
          CustomerLanguage: String.t() | nil,
          ForceCustomerSelectionFlag: boolean | nil,
          ForceEntryMode: [String.t()] | nil,
          LoyaltyHandling: String.t() | nil,
          PaymentType: String.t() | nil,
          TotalAmount: number | nil
        }

  defstruct [
    :AllowedLoyaltyBrand,
    :AllowedPaymentBrand,
    :CashBackFlag,
    :CustomerLanguage,
    :ForceCustomerSelectionFlag,
    :ForceEntryMode,
    :LoyaltyHandling,
    :PaymentType,
    :TotalAmount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AllowedLoyaltyBrand: [:string],
      AllowedPaymentBrand: [:string],
      CashBackFlag: :boolean,
      CustomerLanguage: :string,
      ForceCustomerSelectionFlag: :boolean,
      ForceEntryMode: [
        enum: [
          "RFID",
          "Keyed",
          "Manual",
          "File",
          "Scanned",
          "MagStripe",
          "ICC",
          "SynchronousICC",
          "Tapped",
          "Contactless",
          "CheckReader"
        ]
      ],
      LoyaltyHandling: {:enum, ["Forbidden", "Processed", "Allowed", "Proposed", "Required"]},
      PaymentType:
        {:enum,
         [
           "Normal",
           "Refund",
           "OneTimeReservation",
           "FirstReservation",
           "UpdateReservation",
           "Completion",
           "CashAdvance",
           "CashDeposit",
           "Recurring",
           "Instalment",
           "IssuerInstalment",
           "PaidOut"
         ]},
      TotalAmount: :number
    ]
  end
end
