defmodule Adyen.BalanceControl.V1.BalanceTransferRequest do
  @moduledoc """
  Provides struct and type for a BalanceTransferRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.BalanceControl.V1.Amount.t(),
          description: String.t() | nil,
          fromMerchant: String.t(),
          reference: String.t() | nil,
          toMerchant: String.t(),
          type: String.t()
        }

  defstruct [:amount, :description, :fromMerchant, :reference, :toMerchant, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.BalanceControl.V1.Amount, :t},
      description: :string,
      fromMerchant: :string,
      reference: :string,
      toMerchant: :string,
      type: {:enum, ["tax", "fee", "terminalSale", "credit", "debit", "adjustment"]}
    ]
  end
end
