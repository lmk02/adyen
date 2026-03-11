defmodule Adyen.Capital.V1.Disbursement do
  @moduledoc """
  Provides struct and type for a Disbursement
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Adyen.Capital.V1.Amount.t(),
          balanceAccountId: String.t(),
          balances: Adyen.Capital.V1.Balance.t(),
          fee: Adyen.Capital.V1.Fee.t(),
          fundsCollections: [Adyen.Capital.V1.FundsCollection.t()] | nil,
          grantId: String.t(),
          id: String.t(),
          repayment: Adyen.Capital.V1.DisbursementRepayment.t()
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
      amount: {Adyen.Capital.V1.Amount, :t},
      balanceAccountId: :string,
      balances: {Adyen.Capital.V1.Balance, :t},
      fee: {Adyen.Capital.V1.Fee, :t},
      fundsCollections: [{Adyen.Capital.V1.FundsCollection, :t}],
      grantId: :string,
      id: :string,
      repayment: {Adyen.Capital.V1.DisbursementRepayment, :t}
    ]
  end
end
