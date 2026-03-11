defmodule Adyen.BalancePlatform.V2.Fee do
  @moduledoc """
  Provides struct and type for a Fee
  """

  @type t :: %__MODULE__{amount: Adyen.BalancePlatform.V2.Amount.t()}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.BalancePlatform.V2.Amount, :t}]
  end
end
