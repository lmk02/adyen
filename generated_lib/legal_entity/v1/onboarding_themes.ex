defmodule Adyen.LegalEntity.V1.OnboardingThemes do
  @moduledoc """
  Provides struct and type for a OnboardingThemes
  """

  @type t :: %__MODULE__{
          next: String.t() | nil,
          previous: String.t() | nil,
          themes: [Adyen.LegalEntity.V1.OnboardingTheme.t()]
        }

  defstruct [:next, :previous, :themes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [next: :string, previous: :string, themes: [{Adyen.LegalEntity.V1.OnboardingTheme, :t}]]
  end
end
