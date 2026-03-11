defmodule Adyen.Accounts.UploadDocumentRequest do
  @moduledoc """
  Provides struct and type for a UploadDocumentRequest
  """

  @type t :: %__MODULE__{
          documentContent: String.t(),
          documentDetail: Adyen.Accounts.DocumentDetail.t()
        }

  defstruct [:documentContent, :documentDetail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [documentContent: {:string, "byte"}, documentDetail: {Adyen.Accounts.DocumentDetail, :t}]
  end
end
