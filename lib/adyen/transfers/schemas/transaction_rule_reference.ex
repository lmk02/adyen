defmodule Adyen.Transfers.TransactionRuleReference do
  @moduledoc """
  Provides struct and type for a TransactionRuleReference
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          id: String.t() | nil,
          outcomeType: String.t() | nil,
          reference: String.t() | nil,
          score: integer | nil
        }

  defstruct [:description, :id, :outcomeType, :reference, :score]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      id: :string,
      outcomeType: :string,
      reference: :string,
      score: {:integer, "int32"}
    ]
  end
end
