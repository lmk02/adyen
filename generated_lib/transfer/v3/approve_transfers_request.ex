defmodule Adyen.Transfer.V3.ApproveTransfersRequest do
  @moduledoc """
  Provides struct and type for a ApproveTransfersRequest
  """

  @type t :: %__MODULE__{transferIds: [String.t()] | nil}

  defstruct [:transferIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferIds: [:string]]
  end
end
