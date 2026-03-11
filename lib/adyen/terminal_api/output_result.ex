defmodule Adyen.TerminalAPI.OutputResult do
  @moduledoc """
  Provides struct and type for a OutputResult
  """

  @type t :: %__MODULE__{
          Device: String.t(),
          InfoQualify: String.t(),
          Response: Adyen.TerminalAPI.Response.t()
        }

  defstruct [:Device, :InfoQualify, :Response]

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
      Response: {Adyen.TerminalAPI.Response, :t}
    ]
  end
end
