defmodule Adyen.TerminalAPI.CardAcquisitionResponse do
  @moduledoc """
  Provides struct and type for a CardAcquisitionResponse
  """

  @type t :: %__MODULE__{
          LoyaltyAccount: [Adyen.TerminalAPI.LoyaltyAccount.t()] | nil,
          POIData: Adyen.TerminalAPI.POIData.t(),
          PaymentBrand: [String.t()] | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.PaymentInstrumentData.t() | nil,
          Response: Adyen.TerminalAPI.Response.t(),
          SaleData: Adyen.TerminalAPI.SaleData.t()
        }

  defstruct [
    :LoyaltyAccount,
    :POIData,
    :PaymentBrand,
    :PaymentInstrumentData,
    :Response,
    :SaleData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyAccount: [{Adyen.TerminalAPI.LoyaltyAccount, :t}],
      POIData: {Adyen.TerminalAPI.POIData, :t},
      PaymentBrand: [:string],
      PaymentInstrumentData: {Adyen.TerminalAPI.PaymentInstrumentData, :t},
      Response: {Adyen.TerminalAPI.Response, :t},
      SaleData: {Adyen.TerminalAPI.SaleData, :t}
    ]
  end
end
