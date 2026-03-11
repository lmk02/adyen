defmodule Adyen.Management.V1.Timeouts do
  @moduledoc """
  Provides struct and type for a Timeouts
  """

  @type t :: %__MODULE__{fromActiveToSleep: integer | nil}

  defstruct [:fromActiveToSleep]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fromActiveToSleep: {:integer, "int32"}]
  end
end
