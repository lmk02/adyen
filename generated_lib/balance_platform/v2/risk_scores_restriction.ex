defmodule Adyen.BalancePlatform.V2.RiskScoresRestriction do
  @moduledoc """
  Provides struct and type for a RiskScoresRestriction
  """

  @type t :: %__MODULE__{
          operation: String.t(),
          value: Adyen.BalancePlatform.V2.RiskScores.t() | nil
        }

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: {Adyen.BalancePlatform.V2.RiskScores, :t}]
  end
end
