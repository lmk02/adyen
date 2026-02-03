defmodule Adyen.BalancePlatform.Duration do
  @moduledoc """
  Provides struct and type for a Duration
  """

  @type t :: %__MODULE__{unit: String.t() | nil, value: integer | nil}

  defstruct [:unit, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [unit: {:enum, ["days", "hours", "minutes", "months", "weeks"]}, value: {:integer, "int32"}]
  end
end
