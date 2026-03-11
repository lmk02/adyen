defmodule Adyen.BalancePlatform.V2.ApproveTransferLimitRequest do
  @moduledoc """
  Provides struct and type for a ApproveTransferLimitRequest
  """

  @type t :: %__MODULE__{transferLimitIds: [String.t()]}

  defstruct [:transferLimitIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferLimitIds: [:string]]
  end
end
