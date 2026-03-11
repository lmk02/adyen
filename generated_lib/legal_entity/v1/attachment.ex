defmodule Adyen.LegalEntity.V1.Attachment do
  @moduledoc """
  Provides struct and type for a Attachment
  """

  @type t :: %__MODULE__{
          content: String.t(),
          contentType: String.t() | nil,
          filename: String.t() | nil,
          pageType: String.t() | nil
        }

  defstruct [:content, :contentType, :filename, :pageType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: {:string, "byte"}, contentType: :string, filename: :string, pageType: :string]
  end
end
