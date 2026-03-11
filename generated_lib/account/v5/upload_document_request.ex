defmodule Adyen.Account.V5.UploadDocumentRequest do
  @moduledoc """
  Provides struct and type for a UploadDocumentRequest
  """

  @type t :: %__MODULE__{
          documentContent: String.t(),
          documentDetail: Adyen.Account.V5.DocumentDetail.t()
        }

  defstruct [:documentContent, :documentDetail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [documentContent: {:string, "byte"}, documentDetail: {Adyen.Account.V5.DocumentDetail, :t}]
  end
end
