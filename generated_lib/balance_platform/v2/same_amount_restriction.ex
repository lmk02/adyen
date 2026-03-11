defmodule Adyen.BalancePlatform.V2.SameAmountRestriction do
  @moduledoc """
  Provides struct and type for a SameAmountRestriction
  """

  @type t :: %__MODULE__{operation: String.t(), value: boolean | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: :boolean]
  end
end
