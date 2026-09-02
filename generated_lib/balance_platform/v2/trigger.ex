defmodule Adyen.BalancePlatform.V2.Trigger do
  @moduledoc """
  Provides struct and type for a Trigger
  """

  @type t :: %__MODULE__{
          schedule: Adyen.BalancePlatform.V2.Schedule.t() | nil,
          threshold: Adyen.BalancePlatform.V2.AmountDTO.t()
        }

  defstruct [:schedule, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      schedule: {Adyen.BalancePlatform.V2.Schedule, :t},
      threshold: {Adyen.BalancePlatform.V2.AmountDTO, :t}
    ]
  end
end
