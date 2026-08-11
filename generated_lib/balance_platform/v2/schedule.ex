defmodule Adyen.BalancePlatform.V2.Schedule do
  @moduledoc """
  Provides struct and type for a Schedule
  """

  @type t :: %__MODULE__{type: String.t()}

  defstruct [:type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: {:enum, ["weekdays", "weekly", "monthly"]}]
  end
end
