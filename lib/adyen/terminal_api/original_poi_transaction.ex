defmodule Adyen.TerminalAPI.OriginalPOITransaction do
  @moduledoc """
  Provides struct and type for a OriginalPOITransaction
  """

  @type t :: %__MODULE__{
          AcquirerID: integer | nil,
          AmountValue: number | nil,
          ApprovalCode: String.t() | nil,
          HostTransactionID: Adyen.TerminalAPI.TransactionIDType.t() | nil,
          POIID: String.t() | nil,
          POITransactionID: Adyen.TerminalAPI.TransactionIDType.t() | nil,
          ReuseCardDataFlag: boolean | nil,
          SaleID: String.t() | nil
        }

  defstruct [
    :AcquirerID,
    :AmountValue,
    :ApprovalCode,
    :HostTransactionID,
    :POIID,
    :POITransactionID,
    :ReuseCardDataFlag,
    :SaleID
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AcquirerID: :integer,
      AmountValue: :number,
      ApprovalCode: :string,
      HostTransactionID: {Adyen.TerminalAPI.TransactionIDType, :t},
      POIID: :string,
      POITransactionID: {Adyen.TerminalAPI.TransactionIDType, :t},
      ReuseCardDataFlag: :boolean,
      SaleID: :string
    ]
  end
end
