defmodule Adyen.Dispute.SupplyDefenseDocumentResponse do
  @moduledoc """
  Provides struct and type for a SupplyDefenseDocumentResponse
  """

  @type t :: %__MODULE__{disputeServiceResult: Adyen.Dispute.DisputeServiceResult.t()}

  defstruct [:disputeServiceResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [disputeServiceResult: {Adyen.Dispute.DisputeServiceResult, :t}]
  end
end
