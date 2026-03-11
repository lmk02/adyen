defmodule Adyen.BalancePlatform.V2.EntryModesRestriction do
  @moduledoc """
  Provides struct and type for a EntryModesRestriction
  """

  @type t :: %__MODULE__{operation: String.t(), value: [String.t()] | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      operation: :string,
      value: [
        enum: [
          "barcode",
          "chip",
          "cof",
          "contactless",
          "magstripe",
          "manual",
          "ocr",
          "server",
          "unknown"
        ]
      ]
    ]
  end
end
