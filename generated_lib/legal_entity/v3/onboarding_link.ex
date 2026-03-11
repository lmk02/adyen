defmodule Adyen.LegalEntity.V3.OnboardingLink do
  @moduledoc """
  Provides struct and type for a OnboardingLink
  """

  @type t :: %__MODULE__{url: String.t() | nil}

  defstruct [:url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [url: :string]
  end
end
