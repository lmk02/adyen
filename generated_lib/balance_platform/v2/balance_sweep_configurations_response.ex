defmodule Adyen.BalancePlatform.V2.BalanceSweepConfigurationsResponse do
  @moduledoc """
  Provides struct and type for a BalanceSweepConfigurationsResponse
  """

  @type t :: %__MODULE__{
          hasNext: boolean,
          hasPrevious: boolean,
          sweeps: [Adyen.BalancePlatform.V2.SweepConfigurationV2.t()]
        }

  defstruct [:hasNext, :hasPrevious, :sweeps]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      hasNext: :boolean,
      hasPrevious: :boolean,
      sweeps: [{Adyen.BalancePlatform.V2.SweepConfigurationV2, :t}]
    ]
  end
end
