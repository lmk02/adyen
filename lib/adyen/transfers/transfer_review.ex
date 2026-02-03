defmodule Adyen.Transfers.TransferReview do
  @moduledoc """
  Provides struct and type for a TransferReview
  """

  @type t :: %__MODULE__{
          numberOfApprovalsRequired: integer | nil,
          scaOnApproval: String.t() | nil
        }

  defstruct [:numberOfApprovalsRequired, :scaOnApproval]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      numberOfApprovalsRequired: {:integer, "int32"},
      scaOnApproval: {:enum, ["completed", "notApplicable", "required"]}
    ]
  end
end
