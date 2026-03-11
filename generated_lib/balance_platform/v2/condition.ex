defmodule Adyen.BalancePlatform.V2.Condition do
  @moduledoc """
  Provides struct and type for a Condition
  """

  @type t :: %__MODULE__{balanceType: String.t(), conditionType: String.t(), value: integer}

  defstruct [:balanceType, :conditionType, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceType: {:enum, ["balance", "available", "pending", "reserved"]},
      conditionType:
        {:enum, ["greaterThan", "greaterThanOrEqual", "lessThan", "lessThanOrEqual"]},
      value: {:integer, "int64"}
    ]
  end
end
