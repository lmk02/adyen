defmodule Adyen.TerminalAPI.V1.TransactionConditions do
  @moduledoc """
  Provides struct and type for a TransactionConditions
  """

  @type t :: %__MODULE__{
          AcquirerID: [integer] | nil,
          AllowedLoyaltyBrand: [String.t()] | nil,
          AllowedPaymentBrand: [String.t()] | nil,
          CustomerLanguage: String.t() | nil,
          DebitPreferredFlag: boolean | nil,
          ForceEntryMode: [String.t()] | nil,
          ForceOnlineFlag: boolean | nil,
          LoyaltyHandling: String.t() | nil,
          MerchantCategoryCode: String.t() | nil
        }

  defstruct [
    :AcquirerID,
    :AllowedLoyaltyBrand,
    :AllowedPaymentBrand,
    :CustomerLanguage,
    :DebitPreferredFlag,
    :ForceEntryMode,
    :ForceOnlineFlag,
    :LoyaltyHandling,
    :MerchantCategoryCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AcquirerID: [:integer],
      AllowedLoyaltyBrand: [:string],
      AllowedPaymentBrand: [:string],
      CustomerLanguage: :string,
      DebitPreferredFlag: :boolean,
      ForceEntryMode: [
        enum: [
          "CheckReader",
          "Contactless",
          "File",
          "ICC",
          "Keyed",
          "MagStripe",
          "Manual",
          "RFID",
          "Scanned",
          "SynchronousICC",
          "Tapped"
        ]
      ],
      ForceOnlineFlag: :boolean,
      LoyaltyHandling: {:enum, ["Allowed", "Forbidden", "Processed", "Proposed", "Required"]},
      MerchantCategoryCode: :string
    ]
  end
end
