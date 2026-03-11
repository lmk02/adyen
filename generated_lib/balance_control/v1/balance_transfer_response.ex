defmodule Adyen.BalanceControl.V1.BalanceTransferResponse do
  @moduledoc """
  Provides struct and type for a BalanceTransferResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.BalanceControl.V1.Amount.t(),
          createdAt: DateTime.t(),
          description: String.t() | nil,
          fromMerchant: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          status: String.t(),
          toMerchant: String.t(),
          type: String.t()
        }

  defstruct [
    :amount,
    :createdAt,
    :description,
    :fromMerchant,
    :pspReference,
    :reference,
    :status,
    :toMerchant,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.BalanceControl.V1.Amount, :t},
      createdAt: {:string, "date-time"},
      description: :string,
      fromMerchant: :string,
      pspReference: :string,
      reference: :string,
      status: {:enum, ["error", "failed", "notEnoughBalance", "transferred"]},
      toMerchant: :string,
      type: {:enum, ["tax", "fee", "terminalSale", "credit", "debit", "adjustment"]}
    ]
  end
end
