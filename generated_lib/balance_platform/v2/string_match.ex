defmodule Adyen.BalancePlatform.V2.StringMatch do
  @moduledoc """
  Provides struct and type for a StringMatch
  """

  @type t :: %__MODULE__{operation: String.t() | nil, value: String.t() | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: {:enum, ["contains", "endsWith", "isEqualTo", "startsWith"]}, value: :string]
  end
end
