defmodule Adyen.Dispute.DefenseReason do
  @moduledoc """
  Provides struct and type for a DefenseReason
  """

  @type t :: %__MODULE__{
          defenseDocumentTypes: [Adyen.Dispute.DefenseDocumentType.t()] | nil,
          defenseReasonCode: String.t(),
          satisfied: boolean
        }

  defstruct [:defenseDocumentTypes, :defenseReasonCode, :satisfied]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      defenseDocumentTypes: [{Adyen.Dispute.DefenseDocumentType, :t}],
      defenseReasonCode: :string,
      satisfied: :boolean
    ]
  end
end
