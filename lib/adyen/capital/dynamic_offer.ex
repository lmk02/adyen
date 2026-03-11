defmodule Adyen.Capital.DynamicOffer do
  @moduledoc """
  Provides struct and type for a DynamicOffer
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          contractType: String.t(),
          expiresAt: DateTime.t(),
          financingType: String.t(),
          id: String.t(),
          maximumAmount: Adyen.Capital.Amount.t(),
          minimumAmount: Adyen.Capital.Amount.t(),
          repayment: Adyen.Capital.DynamicOfferRepayment.t(),
          startsAt: DateTime.t()
        }

  defstruct [
    :accountHolderId,
    :contractType,
    :expiresAt,
    :financingType,
    :id,
    :maximumAmount,
    :minimumAmount,
    :repayment,
    :startsAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      contractType: {:enum, ["cashAdvance", "loan"]},
      expiresAt: {:string, "date-time"},
      financingType: {:enum, ["hardwareFinancing", "businessFinancing"]},
      id: :string,
      maximumAmount: {Adyen.Capital.Amount, :t},
      minimumAmount: {Adyen.Capital.Amount, :t},
      repayment: {Adyen.Capital.DynamicOfferRepayment, :t},
      startsAt: {:string, "date-time"}
    ]
  end
end
