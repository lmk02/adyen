defmodule Adyen.Management.V3.Localization do
  @moduledoc """
  Provides struct and type for a Localization
  """

  @type t :: %__MODULE__{
          language: String.t() | nil,
          secondaryLanguage: String.t() | nil,
          timezone: String.t() | nil
        }

  defstruct [:language, :secondaryLanguage, :timezone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [language: :string, secondaryLanguage: :string, timezone: :string]
  end
end
