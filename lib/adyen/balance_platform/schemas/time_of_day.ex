defmodule Adyen.BalancePlatform.TimeOfDay do
  @moduledoc """
  Provides struct and type for a TimeOfDay
  """

  @type t :: %__MODULE__{endTime: String.t() | nil, startTime: String.t() | nil}

  defstruct [:endTime, :startTime]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [endTime: :string, startTime: :string]
  end
end
