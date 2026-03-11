defmodule Adyen.Checkout.V46.TaxTotal do
  @moduledoc """
  Provides struct and type for a TaxTotal
  """

  @type t :: %__MODULE__{amount: Adyen.Checkout.V46.Amount.t() | nil}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Checkout.V46.Amount, :t}]
  end
end
