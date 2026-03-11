defmodule Adyen.Transaction.V3.AttachDocumentResponse do
  @moduledoc """
  Provides struct and type for a AttachDocumentResponse
  """

  @type t :: %__MODULE__{attachmentId: String.t() | nil}

  defstruct [:attachmentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [attachmentId: :string]
  end
end
