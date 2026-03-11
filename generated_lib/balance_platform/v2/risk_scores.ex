defmodule Adyen.BalancePlatform.V2.RiskScores do
  @moduledoc """
  Provides struct and type for a RiskScores
  """

  @type t :: %__MODULE__{mastercard: integer | nil, visa: integer | nil}

  defstruct [:mastercard, :visa]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mastercard: {:integer, "int32"}, visa: {:integer, "int32"}]
  end
end
