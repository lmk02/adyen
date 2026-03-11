defmodule Adyen.TerminalAPI.PaymentTransaction do
  @moduledoc """
  Provides struct and type for a PaymentTransaction
  """

  @type t :: %__MODULE__{
          AmountsReq: Adyen.TerminalAPI.AmountsReq.t(),
          OriginalPOITransaction: Adyen.TerminalAPI.OriginalPOITransaction.t() | nil,
          TransactionConditions: Adyen.TerminalAPI.TransactionConditions.t() | nil
        }

  defstruct [:AmountsReq, :OriginalPOITransaction, :TransactionConditions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AmountsReq: {Adyen.TerminalAPI.AmountsReq, :t},
      OriginalPOITransaction: {Adyen.TerminalAPI.OriginalPOITransaction, :t},
      TransactionConditions: {Adyen.TerminalAPI.TransactionConditions, :t}
    ]
  end
end
