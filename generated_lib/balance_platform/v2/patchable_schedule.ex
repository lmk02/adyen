defmodule Adyen.BalancePlatform.V2.PatchableSchedule do
  @moduledoc """
  Provides struct and type for a PatchableSchedule
  """

  @type t :: %__MODULE__{type: String.t() | nil}

  defstruct [:type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: {:enum, ["weekdays", "weekly", "monthly"]}]
  end
end
