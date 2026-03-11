defmodule Adyen.TerminalAPI.V1.CardAcquisitionResponse do
  @moduledoc """
  Provides struct and type for a CardAcquisitionResponse
  """

  @type t :: %__MODULE__{
          LoyaltyAccount: [Adyen.TerminalAPI.V1.LoyaltyAccount.t()] | nil,
          POIData: Adyen.TerminalAPI.V1.POIData.t(),
          PaymentBrand: [String.t()] | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.V1.PaymentInstrumentData.t() | nil,
          Response: Adyen.TerminalAPI.V1.Response.t(),
          SaleData: Adyen.TerminalAPI.V1.SaleData.t()
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
      LoyaltyAccount: [{Adyen.TerminalAPI.V1.LoyaltyAccount, :t}],
      POIData: {Adyen.TerminalAPI.V1.POIData, :t},
      PaymentBrand: [:string],
      PaymentInstrumentData: {Adyen.TerminalAPI.V1.PaymentInstrumentData, :t},
      Response: {Adyen.TerminalAPI.V1.Response, :t},
      SaleData: {Adyen.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
