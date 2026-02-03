defmodule Adyen.BalancePlatform.GrantOffer do
  @moduledoc """
  Provides struct and type for a GrantOffer
  """

  alias Adyen.BalancePlatform.Amount
  alias Adyen.BalancePlatform.Fee
  alias Adyen.BalancePlatform.Repayment

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Amount.t() | nil,
          contractType: String.t() | nil,
          expiresAt: DateTime.t() | nil,
          fee: Fee.t() | nil,
          id: String.t() | nil,
          repayment: Repayment.t() | nil,
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
      amount: {Amount, :t},
      contractType: {:enum, ["cashAdvance", "loan"]},
      expiresAt: {:string, "date-time"},
      fee: {Fee, :t},
      id: :string,
      repayment: {Repayment, :t},
      startsAt: {:string, "date-time"}
    ]
  end
end
