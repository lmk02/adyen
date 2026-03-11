defmodule Adyen.Dispute.DefenseDocument do
  @moduledoc """
  Provides struct and type for a DefenseDocument
  """

  @type t :: %__MODULE__{
          content: String.t(),
          contentType: String.t(),
          defenseDocumentTypeCode: String.t()
        }

  defstruct [:content, :contentType, :defenseDocumentTypeCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: {:string, "byte"}, contentType: :string, defenseDocumentTypeCode: :string]
  end
end
