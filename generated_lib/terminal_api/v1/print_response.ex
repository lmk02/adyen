defmodule Adyen.TerminalAPI.V1.PrintResponse do
  @moduledoc """
  Provides struct and type for a PrintResponse
  """

  @type t :: %__MODULE__{
          DocumentQualifier: String.t(),
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:DocumentQualifier, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DocumentQualifier:
        {:enum,
         ["CashierReceipt", "CustomerReceipt", "Document", "Journal", "SaleReceipt", "Voucher"]},
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
