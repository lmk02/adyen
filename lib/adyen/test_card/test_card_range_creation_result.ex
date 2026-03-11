defmodule Adyen.TestCard.TestCardRangeCreationResult do
  @moduledoc """
  Provides struct and type for a TestCardRangeCreationResult
  """

  @type t :: %__MODULE__{
          cardNumberRangeEnd: String.t(),
          cardNumberRangeStart: String.t(),
          creationResultCode: String.t(),
          message: String.t() | nil
        }

  defstruct [:cardNumberRangeEnd, :cardNumberRangeStart, :creationResultCode, :message]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardNumberRangeEnd: :string,
      cardNumberRangeStart: :string,
      creationResultCode: {:enum, ["ALREADY_EXISTS", "CREATED", "ERROR"]},
      message: :string
    ]
  end
end
