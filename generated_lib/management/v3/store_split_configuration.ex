defmodule Adyen.Management.V3.StoreSplitConfiguration do
  @moduledoc """
  Provides struct and type for a StoreSplitConfiguration
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          splitConfigurationId: String.t() | nil
        }

  defstruct [:balanceAccountId, :splitConfigurationId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [balanceAccountId: :string, splitConfigurationId: :string]
  end
end
