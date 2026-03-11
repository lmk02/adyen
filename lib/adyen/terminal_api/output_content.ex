defmodule Adyen.TerminalAPI.OutputContent do
  @moduledoc """
  Provides struct and type for a OutputContent
  """

  @type t :: %__MODULE__{
          OutputBarcode: Adyen.TerminalAPI.OutputBarcode.t() | nil,
          OutputFormat: String.t(),
          OutputText: [Adyen.TerminalAPI.OutputText.t()] | nil,
          OutputXHTML: String.t() | nil,
          PredefinedContent: Adyen.TerminalAPI.PredefinedContent.t() | nil
        }

  defstruct [:OutputBarcode, :OutputFormat, :OutputText, :OutputXHTML, :PredefinedContent]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OutputBarcode: {Adyen.TerminalAPI.OutputBarcode, :t},
      OutputFormat: {:enum, ["BarCode", "MessageRef", "Text", "XHTML"]},
      OutputText: [{Adyen.TerminalAPI.OutputText, :t}],
      OutputXHTML: {:string, "byte"},
      PredefinedContent: {Adyen.TerminalAPI.PredefinedContent, :t}
    ]
  end
end
