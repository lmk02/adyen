defmodule Adyen.BalancePlatform.GrantOffer do
  @moduledoc """
  Provides struct and type for a GrantOffer
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Adyen.BalancePlatform.Amount.t() | nil,
          contractType: String.t() | nil,
          expiresAt: DateTime.t() | nil,
          fee: Adyen.BalancePlatform.Fee.t() | nil,
          id: String.t() | nil,
          repayment: Adyen.BalancePlatform.Repayment.t() | nil,
          startsAt: DateTime.t() | nil
        }

  defstruct [
    :accountHolderId,
    :amount,
    :contractType,
    :expiresAt,
    :fee,
    :id,
    :repayment,
    :startsAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      amount: {Adyen.BalancePlatform.Amount, :t},
      contractType: {:enum, ["cashAdvance", "loan"]},
      expiresAt: {:string, "date-time"},
      fee: {Adyen.BalancePlatform.Fee, :t},
      id: :string,
      repayment: {Adyen.BalancePlatform.Repayment, :t},
      startsAt: {:string, "date-time"}
    ]
  end
end
