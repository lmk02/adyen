defmodule Adyen.Dispute.V30.DefenseReasonsResponse do
  @moduledoc """
  Provides struct and type for a DefenseReasonsResponse
  """

  @type t :: %__MODULE__{
          defenseReasons: [Adyen.Dispute.V30.DefenseReason.t()] | nil,
          disputeServiceResult: Adyen.Dispute.V30.DisputeServiceResult.t()
        }

  defstruct [:defenseReasons, :disputeServiceResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      defenseReasons: [{Adyen.Dispute.V30.DefenseReason, :t}],
      disputeServiceResult: {Adyen.Dispute.V30.DisputeServiceResult, :t}
    ]
  end
end
