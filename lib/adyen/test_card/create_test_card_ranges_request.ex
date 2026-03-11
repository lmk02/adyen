defmodule Adyen.TestCard.CreateTestCardRangesRequest do
  @moduledoc """
  Provides struct and type for a CreateTestCardRangesRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          accountTypeCode: String.t(),
          testCardRanges: [Adyen.TestCard.TestCardRange.t()]
        }

  defstruct [:accountCode, :accountTypeCode, :testCardRanges]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountTypeCode: :string,
      testCardRanges: [{Adyen.TestCard.TestCardRange, :t}]
    ]
  end
end
