defmodule Adyen.BalancePlatform.V2.ActiveNetworkTokensRestriction do
  @moduledoc """
  Provides struct and type for a ActiveNetworkTokensRestriction
  """

  @type t :: %__MODULE__{operation: String.t(), value: integer | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: {:integer, "int32"}]
  end
end
