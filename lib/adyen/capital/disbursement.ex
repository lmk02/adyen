defmodule Adyen.Capital.Disbursement do
  @moduledoc """
  Provides struct and type for a Disbursement
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Adyen.Capital.Amount.t(),
          balanceAccountId: String.t(),
          balances: Adyen.Capital.Balance.t(),
          fee: Adyen.Capital.Fee.t(),
          fundsCollections: [Adyen.Capital.FundsCollection.t()] | nil,
          grantId: String.t(),
          id: String.t(),
          repayment: Adyen.Capital.DisbursementRepayment.t()
        }

  defstruct [
    :accountHolderId,
    :amount,
    :balanceAccountId,
    :balances,
    :fee,
    :fundsCollections,
    :grantId,
    :id,
    :repayment
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      amount: {Adyen.Capital.Amount, :t},
      balanceAccountId: :string,
      balances: {Adyen.Capital.Balance, :t},
      fee: {Adyen.Capital.Fee, :t},
      fundsCollections: [{Adyen.Capital.FundsCollection, :t}],
      grantId: :string,
      id: :string,
      repayment: {Adyen.Capital.DisbursementRepayment, :t}
    ]
  end
end
