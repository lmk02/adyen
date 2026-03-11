defmodule Adyen.TerminalAPI.PaymentTotals do
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
           "Award",
           "CashAdvance",
           "CompletedDeffered",
           "CompletedReservation",
           "Credit",
           "Debit",
           "Declined",
           "Failed",
           "FirstReservation",
           "IssuerInstalment",
           "OneTimeReservation",
           "Rebate",
           "Redemption",
           "ReverseAward",
           "ReverseCredit",
           "ReverseDebit",
           "ReverseRebate",
           "ReverseRedemption",
           "UpdateReservation"
         ]}
    ]
  end
end
