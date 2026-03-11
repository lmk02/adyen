defmodule Adyen.Transfers.CapitalGrant do
  @moduledoc """
  Provides struct and type for a CapitalGrant
  """

  @type t :: %__MODULE__{
          amount: Adyen.Transfers.Amount.t() | nil,
          balances: Adyen.Transfers.CapitalBalance.t(),
          counterparty: Adyen.Transfers.GrantCounterparty.t() | nil,
          fee: Adyen.Transfers.Fee.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t(),
          id: String.t(),
          repayment: Adyen.Transfers.Repayment.t() | nil,
          status: String.t()
        }

  defstruct [
    :amount,
    :balances,
    :counterparty,
    :fee,
    :grantAccountId,
    :grantOfferId,
    :id,
    :repayment,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfers.Amount, :t},
      balances: {Adyen.Transfers.CapitalBalance, :t},
      counterparty: {Adyen.Transfers.GrantCounterparty, :t},
      fee: {Adyen.Transfers.Fee, :t},
      grantAccountId: :string,
      grantOfferId: :string,
      id: :string,
      repayment: {Adyen.Transfers.Repayment, :t},
      status: {:enum, ["Pending", "Active", "Repaid", "Failed", "WrittenOff", "Revoked"]}
    ]
  end
end
