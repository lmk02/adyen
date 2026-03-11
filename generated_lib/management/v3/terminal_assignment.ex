defmodule Adyen.Management.V3.TerminalAssignment do
  @moduledoc """
  Provides struct and type for a TerminalAssignment
  """

  @type t :: %__MODULE__{
          companyId: String.t(),
          merchantId: String.t() | nil,
          reassignmentTarget: Adyen.Management.V3.TerminalReassignmentTarget.t() | nil,
          status: String.t(),
          storeId: String.t() | nil
        }

  defstruct [:companyId, :merchantId, :reassignmentTarget, :status, :storeId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      companyId: :string,
      merchantId: :string,
      reassignmentTarget: {Adyen.Management.V3.TerminalReassignmentTarget, :t},
      status: {:enum, ["boarded", "deployed", "inventory", "reassignmentInProgress"]},
      storeId: :string
    ]
  end
end
