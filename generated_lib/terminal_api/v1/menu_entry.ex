defmodule Adyen.TerminalAPI.V1.MenuEntry do
  @moduledoc """
  Provides struct and type for a MenuEntry
  """

  @type t :: %__MODULE__{
          DefaultSelectedFlag: boolean | nil,
          MenuEntryTag: String.t() | nil,
          OutputFormat: String.t(),
          OutputText: [Adyen.TerminalAPI.V1.OutputText.t()] | nil,
          OutputXHTML: String.t() | nil,
          PredefinedContent: Adyen.TerminalAPI.V1.PredefinedContent.t() | nil
        }

  defstruct [
    :DefaultSelectedFlag,
    :MenuEntryTag,
    :OutputFormat,
    :OutputText,
    :OutputXHTML,
    :PredefinedContent
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DefaultSelectedFlag: :boolean,
      MenuEntryTag: {:enum, ["NonSelectable", "NonSelectableSubMenu", "Selectable", "SubMenu"]},
      OutputFormat: {:enum, ["BarCode", "MessageRef", "Text", "XHTML"]},
      OutputText: [{Adyen.TerminalAPI.V1.OutputText, :t}],
      OutputXHTML: {:string, "byte"},
      PredefinedContent: {Adyen.TerminalAPI.V1.PredefinedContent, :t}
    ]
  end
end
