defmodule Adyen.TerminalAPI.ReversalRequest do
  @moduledoc """
  Provides struct and type for a ReversalRequest
  """

  @type t :: %__MODULE__{
          OriginalPOITransaction: Adyen.TerminalAPI.OriginalPOITransaction.t(),
          ReversalReason: String.t(),
          ReversedAmount: number | nil,
          SaleData: Adyen.TerminalAPI.SaleData.t() | nil
        }

  defstruct [:OriginalPOITransaction, :ReversalReason, :ReversedAmount, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OriginalPOITransaction: {Adyen.TerminalAPI.OriginalPOITransaction, :t},
      ReversalReason: {:enum, ["CustCancel", "Malfunction", "MerchantCancel", "Unable2Compl"]},
      ReversedAmount: :number,
      SaleData: {Adyen.TerminalAPI.SaleData, :t}
    ]
  end
end
