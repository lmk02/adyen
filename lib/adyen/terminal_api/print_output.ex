defmodule Adyen.TerminalAPI.PrintOutput do
  @moduledoc """
  Provides struct and type for a PrintOutput
  """

  @type t :: %__MODULE__{
          DocumentQualifier: String.t(),
          IntegratedPrintFlag: boolean | nil,
          OutputContent: Adyen.TerminalAPI.OutputContent.t(),
          RequiredSignatureFlag: boolean | nil,
          ResponseMode: String.t()
        }

  defstruct [
    :DocumentQualifier,
    :IntegratedPrintFlag,
    :OutputContent,
    :RequiredSignatureFlag,
    :ResponseMode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DocumentQualifier:
        {:enum,
         ["CashierReceipt", "CustomerReceipt", "Document", "Journal", "SaleReceipt", "Voucher"]},
      IntegratedPrintFlag: :boolean,
      OutputContent: {Adyen.TerminalAPI.OutputContent, :t},
      RequiredSignatureFlag: :boolean,
      ResponseMode: {:enum, ["Immediate", "NotRequired", "PrintEnd", "SoundEnd"]}
    ]
  end
end
