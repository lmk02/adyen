defmodule Adyen.BalancePlatform.RepaymentTerm do
  @moduledoc """
  Provides struct and type for a RepaymentTerm
  """

  @type t :: %__MODULE__{estimatedDays: integer, maximumDays: integer | nil}

  defstruct [:estimatedDays, :maximumDays]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [estimatedDays: {:integer, "int32"}, maximumDays: {:integer, "int32"}]
  end
end
