defmodule Adyen.TerminalAPI.ReversalResponse do
  @moduledoc """
  Provides struct and type for a ReversalResponse
  """

  @type t :: %__MODULE__{
          OriginalPOITransaction: Adyen.TerminalAPI.OriginalPOITransaction.t() | nil,
          POIData: Adyen.TerminalAPI.POIData.t() | nil,
          PaymentReceipt: [Adyen.TerminalAPI.PaymentReceipt.t()] | nil,
          Response: Adyen.TerminalAPI.Response.t(),
          ReversedAmount: number | nil
        }

  defstruct [:OriginalPOITransaction, :POIData, :PaymentReceipt, :Response, :ReversedAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OriginalPOITransaction: {Adyen.TerminalAPI.OriginalPOITransaction, :t},
      POIData: {Adyen.TerminalAPI.POIData, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.PaymentReceipt, :t}],
      Response: {Adyen.TerminalAPI.Response, :t},
      ReversedAmount: :number
    ]
  end
end
