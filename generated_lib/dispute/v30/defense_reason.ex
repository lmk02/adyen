defmodule Adyen.Dispute.V30.DefenseReason do
  @moduledoc """
  Provides struct and type for a DefenseReason
  """

  @type t :: %__MODULE__{
          defenseDocumentTypes: [Adyen.Dispute.V30.DefenseDocumentType.t()] | nil,
          defenseReasonCode: String.t(),
          satisfied: boolean
        }

  defstruct [:defenseDocumentTypes, :defenseReasonCode, :satisfied]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      defenseDocumentTypes: [{Adyen.Dispute.V30.DefenseDocumentType, :t}],
      defenseReasonCode: :string,
      satisfied: :boolean
    ]
  end
end
