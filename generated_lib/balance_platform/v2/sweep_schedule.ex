defmodule Adyen.BalancePlatform.V2.SweepSchedule do
  @moduledoc """
  Provides struct and type for a SweepSchedule
  """

  @type t :: %__MODULE__{cronExpression: String.t() | nil, type: String.t()}

  defstruct [:cronExpression, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [cronExpression: :string, type: {:enum, ["daily", "weekly", "monthly", "balance", "cron"]}]
  end
end
