defmodule Adyen.Management.Commission do
  @moduledoc """
  Provides struct and type for a Commission
  """

  @type t :: %__MODULE__{fixedAmount: integer | nil, variablePercentage: integer | nil}

  defstruct [:fixedAmount, :variablePercentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fixedAmount: {:integer, "int64"}, variablePercentage: {:integer, "int64"}]
  end
end
