defmodule Adyen.Dispute.V30.DefendDisputeRequest do
  @moduledoc """
  Provides struct and type for a DefendDisputeRequest
  """

  @type t :: %__MODULE__{
          defenseReasonCode: String.t(),
          disputePspReference: String.t(),
          merchantAccountCode: String.t()
        }

  defstruct [:defenseReasonCode, :disputePspReference, :merchantAccountCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [defenseReasonCode: :string, disputePspReference: :string, merchantAccountCode: :string]
  end
end
