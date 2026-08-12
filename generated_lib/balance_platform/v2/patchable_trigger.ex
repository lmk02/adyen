defmodule Adyen.BalancePlatform.V2.PatchableTrigger do
  @moduledoc """
  Provides struct and type for a PatchableTrigger
  """

  @type t :: %__MODULE__{
          schedule: Adyen.BalancePlatform.V2.PatchableSchedule.t() | nil,
          threshold: Adyen.BalancePlatform.V2.PatchableAmountDTO.t() | nil
        }

  defstruct [:schedule, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      schedule: {:union, [{Adyen.BalancePlatform.V2.PatchableSchedule, :t}, :null]},
      threshold: {Adyen.BalancePlatform.V2.PatchableAmountDTO, :t}
    ]
  end
end
