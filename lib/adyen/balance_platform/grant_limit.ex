defmodule Adyen.BalancePlatform.GrantLimit do
  @moduledoc """
  Provides struct and type for a GrantLimit
  """

  @type t :: %__MODULE__{amount: Adyen.BalancePlatform.Amount.t() | nil}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.BalancePlatform.Amount, :t}]
  end
end
