defmodule Adyen.Management.V3.TerminalReassignmentTarget do
  @moduledoc """
  Provides struct and type for a TerminalReassignmentTarget
  """

  @type t :: %__MODULE__{
          companyId: String.t() | nil,
          inventory: boolean,
          merchantId: String.t() | nil,
          storeId: String.t() | nil
        }

  defstruct [:companyId, :inventory, :merchantId, :storeId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [companyId: :string, inventory: :boolean, merchantId: :string, storeId: :string]
  end
end
