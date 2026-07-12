defmodule Adyen.TerminalAPI.V1.OutputText do
  @moduledoc """
  Provides struct and type for a OutputText
  """

  @type t :: %__MODULE__{
          Alignment: String.t() | nil,
          CharacterHeight: String.t() | nil,
          CharacterSet: integer | nil,
          CharacterStyle: String.t() | nil,
          CharacterWidth: String.t() | nil,
          EndOfLineFlag: boolean | nil,
          StartColumn: integer | nil,
          StartRow: integer | nil,
          Text: String.t()
        }

  defstruct [
    :Alignment,
    :CharacterHeight,
    :CharacterSet,
    :CharacterStyle,
    :CharacterWidth,
    :EndOfLineFlag,
    :StartColumn,
    :StartRow,
    :Text
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Alignment: {:enum, ["Left", "Right", "Centred", "Justified"]},
      CharacterHeight: {:enum, ["SingleHeight", "DoubleHeight", "HalfHeight"]},
      CharacterSet: :integer,
      CharacterStyle: {:enum, ["Normal", "Bold", "Italic", "Underline"]},
      CharacterWidth: {:enum, ["SingleWidth", "DoubleWidth"]},
      EndOfLineFlag: :boolean,
      StartColumn: :integer,
      StartRow: :integer,
      Text: :string
    ]
  end
end
