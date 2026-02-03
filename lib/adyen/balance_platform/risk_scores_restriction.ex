defmodule Adyen.BalancePlatform.RiskScoresRestriction do
  @moduledoc """
  Provides struct and type for a RiskScoresRestriction
  """

  alias Adyen.BalancePlatform.RiskScores

  @type t :: %__MODULE__{operation: String.t(), value: RiskScores.t() | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: {RiskScores, :t}]
  end
end
