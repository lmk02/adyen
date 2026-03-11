defmodule Adyen.TerminalAPI.V1.StoredValueAccountID do
  @moduledoc """
  Provides struct and type for a StoredValueAccountID
  """

  @type t :: %__MODULE__{
          EntryMode: [String.t()],
          ExpiryDate: integer | nil,
          IdentificationType: String.t(),
          OwnerName: String.t() | nil,
          StoredValueAccountType: String.t(),
          StoredValueID: String.t(),
          StoredValueProvider: String.t() | nil
        }

  defstruct [
    :EntryMode,
    :ExpiryDate,
    :IdentificationType,
    :OwnerName,
    :StoredValueAccountType,
    :StoredValueID,
    :StoredValueProvider
  ]

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
      ExpiryDate: :integer,
      IdentificationType:
        {:enum, ["AccountNumber", "BarCode", "ISOTrack2", "PAN", "PhoneNumber"]},
      OwnerName: :string,
      StoredValueAccountType: {:enum, ["GiftCard", "Other", "PhoneCard"]},
      StoredValueID: :string,
      StoredValueProvider: :string
    ]
  end
end
