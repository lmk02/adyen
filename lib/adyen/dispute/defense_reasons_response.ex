defmodule Adyen.Dispute.DefenseReasonsResponse do
  @moduledoc """
  Provides struct and type for a DefenseReasonsResponse
  """

  @type t :: %__MODULE__{
          defenseReasons: [Adyen.Dispute.DefenseReason.t()] | nil,
          disputeServiceResult: Adyen.Dispute.DisputeServiceResult.t()
        }

  defstruct [:defenseReasons, :disputeServiceResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      defenseReasons: [{Adyen.Dispute.DefenseReason, :t}],
      disputeServiceResult: {Adyen.Dispute.DisputeServiceResult, :t}
    ]
  end
end
