defmodule Adyen.Fund.V3.AmountWrapper do
  @moduledoc """
  Provides struct and type for a AmountWrapper
  """

  @type t :: %__MODULE__{Amount: Adyen.Fund.V3.Amount.t() | nil}

  defstruct [:Amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Amount: {Adyen.Fund.V3.Amount, :t}]
  end
end
