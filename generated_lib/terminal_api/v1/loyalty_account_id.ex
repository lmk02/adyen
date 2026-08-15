defmodule Adyen.TerminalAPI.V1.LoyaltyAccountID do
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
          "Mobile"
        ]
      ],
      IdentificationSupport: {:enum, ["NoCard", "LoyaltyCard", "HybridCard", "LinkedCard"]},
      IdentificationType:
        {:enum, ["PAN", "ISOTrack2", "BarCode", "AccountNumber", "PhoneNumber"]},
      LoyaltyID: :string
    ]
  end
end
