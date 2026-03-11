defmodule Adyen.TerminalAPI.LoyaltyAccountID do
  @moduledoc """
  Provides struct and type for a LoyaltyAccountID
  """

  @type t :: %__MODULE__{
          EntryMode: [String.t()],
          IdentificationSupport: String.t() | nil,
          IdentificationType: String.t(),
          LoyaltyID: String.t()
        }

  defstruct [:EntryMode, :IdentificationSupport, :IdentificationType, :LoyaltyID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      EntryMode: [
        enum: [
          "Contactless",
          "File",
          "ICC",
          "Keyed",
          "MagStripe",
          "Manual",
          "Mobile",
          "RFID",
          "Scanned",
          "SynchronousICC",
          "Tapped"
        ]
      ],
      IdentificationSupport: {:enum, ["HybridCard", "LinkedCard", "LoyaltyCard", "NoCard"]},
      IdentificationType:
        {:enum, ["AccountNumber", "BarCode", "ISOTrack2", "PAN", "PhoneNumber"]},
      LoyaltyID: :string
    ]
  end
end
