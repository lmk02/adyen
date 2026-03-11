defmodule Adyen.Dispute.V30.AcceptDisputeResponse do
  @moduledoc """
  Provides struct and type for a AcceptDisputeResponse
  """

  @type t :: %__MODULE__{disputeServiceResult: Adyen.Dispute.V30.DisputeServiceResult.t()}

  defstruct [:disputeServiceResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [disputeServiceResult: {Adyen.Dispute.V30.DisputeServiceResult, :t}]
  end
end
