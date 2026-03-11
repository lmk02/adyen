defmodule Adyen.TerminalAPI.V1.SaleData do
  @moduledoc """
  Provides struct and type for a SaleData
  """

  @type t :: %__MODULE__{
          CustomerOrderID: String.t() | nil,
          CustomerOrderReq: [String.t()] | nil,
          OperatorID: String.t() | nil,
          OperatorLanguage: String.t() | nil,
          SaleReferenceID: String.t() | nil,
          SaleTerminalData: Adyen.TerminalAPI.V1.SaleTerminalData.t() | nil,
          SaleToAcquirerData: String.t() | nil,
          SaleToIssuerData: Adyen.TerminalAPI.V1.SaleToIssuerData.t() | nil,
          SaleToPOIData: String.t() | nil,
          SaleTransactionID: Adyen.TerminalAPI.V1.TransactionIDType.t(),
          ShiftNumber: String.t() | nil,
          TokenRequestedType: String.t() | nil
        }

  defstruct [
    :CustomerOrderID,
    :CustomerOrderReq,
    :OperatorID,
    :OperatorLanguage,
    :SaleReferenceID,
    :SaleTerminalData,
    :SaleToAcquirerData,
    :SaleToIssuerData,
    :SaleToPOIData,
    :SaleTransactionID,
    :ShiftNumber,
    :TokenRequestedType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CustomerOrderID: :string,
      CustomerOrderReq: [enum: ["Both", "Closed", "Open"]],
      OperatorID: :string,
      OperatorLanguage: :string,
      SaleReferenceID: :string,
      SaleTerminalData: {Adyen.TerminalAPI.V1.SaleTerminalData, :t},
      SaleToAcquirerData: :string,
      SaleToIssuerData: {Adyen.TerminalAPI.V1.SaleToIssuerData, :t},
      SaleToPOIData: :string,
      SaleTransactionID: {Adyen.TerminalAPI.V1.TransactionIDType, :t},
      ShiftNumber: :string,
      TokenRequestedType: {:enum, ["Customer", "Transaction"]}
    ]
  end
end
