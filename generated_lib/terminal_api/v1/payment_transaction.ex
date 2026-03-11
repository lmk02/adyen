defmodule Adyen.TerminalAPI.V1.PaymentTransaction do
  @moduledoc """
  Provides struct and type for a PaymentTransaction
  """

  @type t :: %__MODULE__{
          AmountsReq: Adyen.TerminalAPI.V1.AmountsReq.t(),
          OriginalPOITransaction: Adyen.TerminalAPI.V1.OriginalPOITransaction.t() | nil,
          TransactionConditions: Adyen.TerminalAPI.V1.TransactionConditions.t() | nil
        }

  defstruct [:AmountsReq, :OriginalPOITransaction, :TransactionConditions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AmountsReq: {Adyen.TerminalAPI.V1.AmountsReq, :t},
      OriginalPOITransaction: {Adyen.TerminalAPI.V1.OriginalPOITransaction, :t},
      TransactionConditions: {Adyen.TerminalAPI.V1.TransactionConditions, :t}
    ]
  end
end
