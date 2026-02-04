defmodule Adyen.Transfers.TransferRequestReview do
  @moduledoc """
  Provides struct and type for a TransferRequestReview
  """

  @type t :: %__MODULE__{numberOfApprovalsRequired: integer | nil, scaOnApproval: boolean | nil}

  defstruct [:numberOfApprovalsRequired, :scaOnApproval]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [numberOfApprovalsRequired: {:integer, "int32"}, scaOnApproval: :boolean]
  end
end
