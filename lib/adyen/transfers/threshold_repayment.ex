defmodule Adyen.Transfers.ThresholdRepayment do
  @moduledoc """
  Provides struct and type for a ThresholdRepayment
  """

  @type t :: %__MODULE__{amount: Adyen.Transfers.Amount.t()}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Transfers.Amount, :t}]
  end
end
