defmodule Adyen.LegalEntity.GeneratePciDescriptionResponse do
  @moduledoc """
  Provides struct and type for a GeneratePciDescriptionResponse
  """

  @type t :: %__MODULE__{
          content: String.t() | nil,
          language: String.t() | nil,
          pciTemplateReferences: [String.t()] | nil
        }

  defstruct [:content, :language, :pciTemplateReferences]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: {:string, "byte"}, language: :string, pciTemplateReferences: [:string]]
  end
end
