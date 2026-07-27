defmodule Adyen.TerminalAPI.V1.OutputResult do
  @moduledoc """
  Provides struct and type for a OutputResult
  """

  @type t :: %__MODULE__{
          Device: String.t(),
          InfoQualify: String.t(),
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:Device, :InfoQualify, :Response]

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
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
