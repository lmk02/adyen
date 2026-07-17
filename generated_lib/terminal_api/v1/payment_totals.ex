defmodule Adyen.TerminalAPI.V1.PaymentTotals do
  @moduledoc """
  Provides struct and type for a PaymentTotals
  """

  @type t :: %__MODULE__{
          TransactionAmount: number,
          TransactionCount: integer,
          TransactionType: String.t()
        }

  defstruct [:TransactionAmount, :TransactionCount, :TransactionType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      TransactionAmount: :number,
      TransactionCount: :integer,
      TransactionType:
        {:enum,
         [
           "Debit",
           "Credit",
           "ReverseDebit",
           "ReverseCredit",
           "OneTimeReservation",
           "CompletedDeffered",
           "FirstReservation",
           "UpdateReservation",
           "CompletedReservation",
           "CashAdvance",
           "IssuerInstalment",
           "Declined",
           "Failed",
           "Award",
           "ReverseAward",
           "Redemption",
           "ReverseRedemption",
           "Rebate",
           "ReverseRebate"
         ]}
    ]
  end
end
