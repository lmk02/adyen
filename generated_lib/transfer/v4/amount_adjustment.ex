defmodule Adyen.Transfer.V4.AmountAdjustment do
  @moduledoc """
  Provides struct and type for a AmountAdjustment
  """

  @type t :: %__MODULE__{
          amount: Adyen.Transfer.V4.Amount.t() | nil,
          amountAdjustmentType: String.t() | nil,
          basepoints: integer | nil
        }

  defstruct [:amount, :amountAdjustmentType, :basepoints]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfer.V4.Amount, :t},
      amountAdjustmentType: {:enum, ["atmMarkup", "authHoldReserve", "exchange", "forexMarkup"]},
      basepoints: {:integer, "int32"}
    ]
  end
end
