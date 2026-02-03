defmodule Adyen.BalancePlatform.ThresholdRepayment do
  @moduledoc """
  Provides struct and type for a ThresholdRepayment
  """

  alias Adyen.BalancePlatform.Amount

  @type t :: %__MODULE__{amount: Amount.t()}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Amount, :t}]
  end
end
