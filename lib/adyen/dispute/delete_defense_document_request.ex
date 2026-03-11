defmodule Adyen.Dispute.DeleteDefenseDocumentRequest do
  @moduledoc """
  Provides struct and type for a DeleteDefenseDocumentRequest
  """

  @type t :: %__MODULE__{
          defenseDocumentType: String.t(),
          disputePspReference: String.t(),
          merchantAccountCode: String.t()
        }

  defstruct [:defenseDocumentType, :disputePspReference, :merchantAccountCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [defenseDocumentType: :string, disputePspReference: :string, merchantAccountCode: :string]
  end
end
