defmodule Adyen.TerminalAPI.V1.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          LoyaltyResult: [Adyen.TerminalAPI.V1.LoyaltyResult.t()] | nil,
          POIData: Adyen.TerminalAPI.V1.POIData.t(),
          PaymentReceipt: [Adyen.TerminalAPI.V1.PaymentReceipt.t()] | nil,
          PaymentResult: Adyen.TerminalAPI.V1.PaymentResult.t() | nil,
          Response: Adyen.TerminalAPI.V1.Response.t(),
          SaleData: Adyen.TerminalAPI.V1.SaleData.t()
        }

  defstruct [:LoyaltyResult, :POIData, :PaymentReceipt, :PaymentResult, :Response, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyResult: [{Adyen.TerminalAPI.V1.LoyaltyResult, :t}],
      POIData: {Adyen.TerminalAPI.V1.POIData, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.V1.PaymentReceipt, :t}],
      PaymentResult: {Adyen.TerminalAPI.V1.PaymentResult, :t},
      Response: {Adyen.TerminalAPI.V1.Response, :t},
      SaleData: {Adyen.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
