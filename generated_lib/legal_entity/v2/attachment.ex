defmodule Adyen.LegalEntity.V2.Attachment do
  @moduledoc """
  Provides struct and type for a Attachment
  """

  @type t :: %__MODULE__{
          content: String.t(),
          contentType: String.t() | nil,
          filename: String.t() | nil,
          pageName: String.t() | nil,
          pageType: String.t() | nil
        }

  defstruct [:content, :contentType, :filename, :pageName, :pageType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: {:string, "byte"},
      contentType: :string,
      filename: :string,
      pageName: :string,
      pageType: :string
    ]
  end
end
