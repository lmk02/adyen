defmodule Adyen.BalancePlatform.Summary do
  @moduledoc """
  Provides struct and type for a Summary
  """

  @type t :: %__MODULE__{legalEntityId: String.t(), taxYears: [integer]}

  defstruct [:legalEntityId, :taxYears]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [legalEntityId: :string, taxYears: [integer: "int32"]]
  end
end
