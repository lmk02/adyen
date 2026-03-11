defmodule Adyen.LegalEntity.V1.OnboardingTheme do
  @moduledoc """
  Provides struct and type for a OnboardingTheme
  """

  @type t :: %__MODULE__{
          createdAt: DateTime.t(),
          description: String.t() | nil,
          id: String.t(),
          properties: map,
          updatedAt: DateTime.t() | nil
        }

  defstruct [:createdAt, :description, :id, :properties, :updatedAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      createdAt: {:string, "date-time"},
      description: :string,
      id: :string,
      properties: :map,
      updatedAt: {:string, "date-time"}
    ]
  end
end
