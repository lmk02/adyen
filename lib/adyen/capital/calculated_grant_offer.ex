defmodule Adyen.Capital.CalculatedGrantOffer do
  @moduledoc """
  Provides struct and type for a CalculatedGrantOffer
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Adyen.Capital.Amount.t(),
          contractType: String.t(),
          expiresAt: DateTime.t(),
          fee: Adyen.Capital.GrantOfferFee.t(),
          repayment: Adyen.Capital.Repayment.t(),
          startsAt: DateTime.t()
        }

  defstruct [:accountHolderId, :amount, :contractType, :expiresAt, :fee, :repayment, :startsAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      amount: {Adyen.Capital.Amount, :t},
      contractType: {:enum, ["cashAdvance", "loan"]},
      expiresAt: {:string, "date-time"},
      fee: {Adyen.Capital.GrantOfferFee, :t},
      repayment: {Adyen.Capital.Repayment, :t},
      startsAt: {:string, "date-time"}
    ]
  end
end
