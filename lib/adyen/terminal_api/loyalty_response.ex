defmodule Adyen.TerminalAPI.LoyaltyResponse do
  @moduledoc """
  Provides struct and type for a LoyaltyResponse
  """

  @type t :: %__MODULE__{
          LoyaltyResult: [Adyen.TerminalAPI.LoyaltyResult.t()] | nil,
          POIData: Adyen.TerminalAPI.POIData.t(),
          PaymentReceipt: [Adyen.TerminalAPI.PaymentReceipt.t()] | nil,
          Response: Adyen.TerminalAPI.Response.t(),
          SaleData: Adyen.TerminalAPI.SaleData.t()
        }

  defstruct [:LoyaltyResult, :POIData, :PaymentReceipt, :Response, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyResult: [{Adyen.TerminalAPI.LoyaltyResult, :t}],
      POIData: {Adyen.TerminalAPI.POIData, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.PaymentReceipt, :t}],
      Response: {Adyen.TerminalAPI.Response, :t},
      SaleData: {Adyen.TerminalAPI.SaleData, :t}
    ]
  end
end
