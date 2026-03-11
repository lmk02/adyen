defmodule Adyen.TerminalAPI.V1.ReversalRequest do
  @moduledoc """
  Provides struct and type for a ReversalRequest
  """

  @type t :: %__MODULE__{
          OriginalPOITransaction: Adyen.TerminalAPI.V1.OriginalPOITransaction.t(),
          ReversalReason: String.t(),
          ReversedAmount: number | nil,
          SaleData: Adyen.TerminalAPI.V1.SaleData.t() | nil
        }

  defstruct [:OriginalPOITransaction, :ReversalReason, :ReversedAmount, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OriginalPOITransaction: {Adyen.TerminalAPI.V1.OriginalPOITransaction, :t},
      ReversalReason: {:enum, ["CustCancel", "Malfunction", "MerchantCancel", "Unable2Compl"]},
      ReversedAmount: :number,
      SaleData: {Adyen.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
