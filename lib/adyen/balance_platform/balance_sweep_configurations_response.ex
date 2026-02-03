defmodule Adyen.BalancePlatform.BalanceSweepConfigurationsResponse do
  @moduledoc """
  Provides struct and type for a BalanceSweepConfigurationsResponse
  """

  alias Adyen.BalancePlatform.SweepConfigurationV2

  @type t :: %__MODULE__{
          hasNext: boolean,
          hasPrevious: boolean,
          sweeps: [SweepConfigurationV2.t()]
        }

  defstruct [:hasNext, :hasPrevious, :sweeps]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      hasNext: :boolean,
      hasPrevious: :boolean,
      sweeps: [{SweepConfigurationV2, :t}]
    ]
  end
end
