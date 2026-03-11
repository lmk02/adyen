defmodule Adyen.Transaction.V1.DisputeAttachment do
  @moduledoc """
  Provides struct and type for a DisputeAttachment
  """

  @type t :: %__MODULE__{
          attachmentType: String.t(),
          content: String.t(),
          fileName: String.t(),
          id: String.t() | nil
        }

  defstruct [:attachmentType, :content, :fileName, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attachmentType: {:enum, ["receipt", "correspondence", "other"]},
      content: :string,
      fileName: :string,
      id: :string
    ]
  end
end
