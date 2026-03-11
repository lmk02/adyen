defmodule Adyen.TerminalAPI.TransactionStatusRequest do
  @moduledoc """
  Provides struct and type for a TransactionStatusRequest
  """

  @type t :: %__MODULE__{
          DocumentQualifier: [String.t()] | nil,
          MessageReference: Adyen.TerminalAPI.MessageReference.t() | nil,
          ReceiptReprintFlag: boolean | nil
        }

  defstruct [:DocumentQualifier, :MessageReference, :ReceiptReprintFlag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DocumentQualifier: [
        enum: [
          "CashierReceipt",
          "CustomerReceipt",
          "Document",
          "Journal",
          "SaleReceipt",
          "Voucher"
        ]
      ],
      MessageReference: {Adyen.TerminalAPI.MessageReference, :t},
      ReceiptReprintFlag: :boolean
    ]
  end
end
