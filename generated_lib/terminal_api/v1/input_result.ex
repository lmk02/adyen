defmodule Adyen.TerminalAPI.V1.InputResult do
  @moduledoc """
  Provides struct and type for a InputResult
  """

  @type t :: %__MODULE__{
          Device: String.t(),
          InfoQualify: String.t(),
          Input: Adyen.TerminalAPI.V1.Input.t() | nil,
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:Device, :InfoQualify, :Input, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Device: {:enum, ["CashierDisplay", "CustomerDisplay", "CashierInput", "CustomerInput"]},
      InfoQualify:
        {:enum,
         [
           "Status",
           "Error",
           "Display",
           "Sound",
           "Input",
           "POIReplication",
           "CustomerAssistance",
           "Receipt",
           "Document",
           "Voucher"
         ]},
      Input: {Adyen.TerminalAPI.V1.Input, :t},
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
