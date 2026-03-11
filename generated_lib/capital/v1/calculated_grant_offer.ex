defmodule Adyen.Capital.V1.CalculatedGrantOffer do
  @moduledoc """
  Provides struct and type for a CalculatedGrantOffer
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: Adyen.Capital.V1.Amount.t(),
          contractType: String.t(),
          expiresAt: DateTime.t(),
          fee: Adyen.Capital.V1.GrantOfferFee.t(),
          repayment: Adyen.Capital.V1.Repayment.t(),
          startsAt: DateTime.t()
        }

  defstruct [:accountHolderId, :amount, :contractType, :expiresAt, :fee, :repayment, :startsAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      amount: {Adyen.Capital.V1.Amount, :t},
      contractType: {:enum, ["cashAdvance", "loan"]},
      expiresAt: {:string, "date-time"},
      fee: {Adyen.Capital.V1.GrantOfferFee, :t},
      repayment: {Adyen.Capital.V1.Repayment, :t},
      startsAt: {:string, "date-time"}
    ]
  end
end
