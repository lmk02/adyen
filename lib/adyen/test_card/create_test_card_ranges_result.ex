defmodule Adyen.TestCard.CreateTestCardRangesResult do
  @moduledoc """
  Provides struct and type for a CreateTestCardRangesResult
  """

  @type t :: %__MODULE__{rangeCreationResults: [Adyen.TestCard.TestCardRangeCreationResult.t()]}

  defstruct [:rangeCreationResults]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [rangeCreationResults: [{Adyen.TestCard.TestCardRangeCreationResult, :t}]]
  end
end
