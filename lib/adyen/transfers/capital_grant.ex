defmodule Adyen.Transfers.CapitalGrant do
  @moduledoc """
  Provides struct and type for a CapitalGrant
  """

  alias Adyen.Transfers.Amount
  alias Adyen.Transfers.CapitalBalance
  alias Adyen.Transfers.Counterparty
  alias Adyen.Transfers.Fee
  alias Adyen.Transfers.Repayment

  @type t :: %__MODULE__{
          amount: Amount.t() | nil,
          balances: CapitalBalance.t(),
          counterparty: Counterparty.t() | nil,
          fee: Fee.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t(),
          id: String.t(),
          repayment: Repayment.t() | nil,
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
      amount: {Amount, :t},
      balances: {CapitalBalance, :t},
      counterparty: {Counterparty, :t},
      fee: {Fee, :t},
      grantAccountId: :string,
      grantOfferId: :string,
      id: :string,
      repayment: {Repayment, :t},
      status: {:enum, ["Pending", "Active", "Repaid", "Failed", "WrittenOff", "Revoked"]}
    ]
  end
end
