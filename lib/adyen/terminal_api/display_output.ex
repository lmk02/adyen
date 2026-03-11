defmodule Adyen.TerminalAPI.DisplayOutput do
  @moduledoc """
  Provides struct and type for a DisplayOutput
  """

  @type t :: %__MODULE__{
          Device: String.t(),
          InfoQualify: String.t(),
          MenuEntry: [Adyen.TerminalAPI.MenuEntry.t()] | nil,
          MinimumDisplayTime: integer | nil,
          OutputContent: Adyen.TerminalAPI.OutputContent.t(),
          OutputSignature: String.t() | nil,
          ResponseRequiredFlag: boolean | nil
        }

  defstruct [
    :Device,
    :InfoQualify,
    :MenuEntry,
    :MinimumDisplayTime,
    :OutputContent,
    :OutputSignature,
    :ResponseRequiredFlag
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Device: {:enum, ["CashierDisplay", "CashierInput", "CustomerDisplay", "CustomerInput"]},
      InfoQualify:
        {:enum,
         [
           "CustomerAssistance",
           "Display",
           "Document",
           "Error",
           "Input",
           "POIReplication",
           "Receipt",
           "Sound",
           "Status",
           "Voucher"
         ]},
      MenuEntry: [{Adyen.TerminalAPI.MenuEntry, :t}],
      MinimumDisplayTime: :integer,
      OutputContent: {Adyen.TerminalAPI.OutputContent, :t},
      OutputSignature: {:string, "byte"},
      ResponseRequiredFlag: :boolean
    ]
  end
end
