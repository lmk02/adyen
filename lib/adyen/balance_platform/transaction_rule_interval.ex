defmodule Adyen.BalancePlatform.TransactionRuleInterval do
  @moduledoc """
  Provides struct and type for a TransactionRuleInterval
  """

  alias Adyen.BalancePlatform.Duration

  @type t :: %__MODULE__{
          dayOfMonth: integer | nil,
          dayOfWeek: String.t() | nil,
          duration: Duration.t() | nil,
          timeOfDay: String.t() | nil,
          timeZone: String.t() | nil,
          type: String.t()
        }

  defstruct [:dayOfMonth, :dayOfWeek, :duration, :timeOfDay, :timeZone, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dayOfMonth: {:integer, "int32"},
      dayOfWeek: {:enum, ["friday", "monday", "saturday", "sunday", "thursday", "tuesday", "wednesday"]},
      duration: {Duration, :t},
      timeOfDay: :string,
      timeZone: :string,
      type: {:enum, ["daily", "lifetime", "monthly", "perTransaction", "rolling", "sliding", "weekly"]}
    ]
  end
end
