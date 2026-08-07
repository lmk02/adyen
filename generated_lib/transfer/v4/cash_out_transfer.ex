defmodule Adyen.Transfer.V4.CashOutTransfer do
  @moduledoc """
  Provides struct and type for a CashOutTransfer
  """

  @type t :: %__MODULE__{amount: Adyen.Transfer.V4.Amount.t(), id: String.t(), type: String.t()}

  defstruct [:amount, :id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfer.V4.Amount, :t},
      id: :string,
      type: {:enum, ["cashoutRepayment", "cashoutFee"]}
    ]
  end
end
