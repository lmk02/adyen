defmodule Adyen.Checkout.TaxTotal do
  @moduledoc """
  Provides struct and type for a TaxTotal
  """

  alias Adyen.Checkout.Amount

  @type t :: %__MODULE__{amount: Amount.t() | nil}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Amount, :t}]
  end
end
