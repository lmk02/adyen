defmodule Adyen.LegalEntity.V3.GetPciQuestionnaireResponse do
  @moduledoc """
  Provides struct and type for a GetPciQuestionnaireResponse
  """

  @type t :: %__MODULE__{
          content: String.t() | nil,
          createdAt: DateTime.t() | nil,
          id: String.t() | nil,
          validUntil: DateTime.t() | nil
        }

  defstruct [:content, :createdAt, :id, :validUntil]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: {:string, "byte"},
      createdAt: {:string, "date-time"},
      id: :string,
      validUntil: {:string, "date-time"}
    ]
  end
end
