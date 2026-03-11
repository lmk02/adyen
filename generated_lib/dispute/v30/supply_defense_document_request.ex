defmodule Adyen.Dispute.V30.SupplyDefenseDocumentRequest do
  @moduledoc """
  Provides struct and type for a SupplyDefenseDocumentRequest
  """

  @type t :: %__MODULE__{
          defenseDocuments: [Adyen.Dispute.V30.DefenseDocument.t()],
          disputePspReference: String.t(),
          merchantAccountCode: String.t()
        }

  defstruct [:defenseDocuments, :disputePspReference, :merchantAccountCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      defenseDocuments: [{Adyen.Dispute.V30.DefenseDocument, :t}],
      disputePspReference: :string,
      merchantAccountCode: :string
    ]
  end
end
