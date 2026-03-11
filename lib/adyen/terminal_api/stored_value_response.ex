defmodule Adyen.TerminalAPI.StoredValueResponse do
  @moduledoc """
  Provides struct and type for a StoredValueResponse
  """

  @type t :: %__MODULE__{
          POIData: Adyen.TerminalAPI.POIData.t(),
          PaymentReceipt: [Adyen.TerminalAPI.PaymentReceipt.t()] | nil,
          Response: Adyen.TerminalAPI.Response.t(),
          SaleData: Adyen.TerminalAPI.SaleData.t(),
          StoredValueResult: [Adyen.TerminalAPI.StoredValueResult.t()] | nil
        }

  defstruct [:POIData, :PaymentReceipt, :Response, :SaleData, :StoredValueResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      POIData: {Adyen.TerminalAPI.POIData, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.PaymentReceipt, :t}],
      Response: {Adyen.TerminalAPI.Response, :t},
      SaleData: {Adyen.TerminalAPI.SaleData, :t},
      StoredValueResult: [{Adyen.TerminalAPI.StoredValueResult, :t}]
    ]
  end
end
