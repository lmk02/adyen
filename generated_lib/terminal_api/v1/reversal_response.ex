defmodule Adyen.TerminalAPI.V1.ReversalResponse do
  @moduledoc """
  Provides struct and type for a ReversalResponse
  """

  @type t :: %__MODULE__{
          OriginalPOITransaction: Adyen.TerminalAPI.V1.OriginalPOITransaction.t() | nil,
          POIData: Adyen.TerminalAPI.V1.POIData.t() | nil,
          PaymentReceipt: [Adyen.TerminalAPI.V1.PaymentReceipt.t()] | nil,
          Response: Adyen.TerminalAPI.V1.Response.t(),
          ReversedAmount: number | nil
        }

  defstruct [:OriginalPOITransaction, :POIData, :PaymentReceipt, :Response, :ReversedAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OriginalPOITransaction: {Adyen.TerminalAPI.V1.OriginalPOITransaction, :t},
      POIData: {Adyen.TerminalAPI.V1.POIData, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.V1.PaymentReceipt, :t}],
      Response: {Adyen.TerminalAPI.V1.Response, :t},
      ReversedAmount: :number
    ]
  end
end
