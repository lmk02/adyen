defmodule Adyen.Transfers.EstimationTrackingData do
  @moduledoc """
  Provides struct and type for a EstimationTrackingData
  """

  @type t :: %__MODULE__{estimatedArrivalTime: DateTime.t(), type: String.t()}

  defstruct [:estimatedArrivalTime, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [estimatedArrivalTime: {:string, "date-time"}, type: {:const, "estimation"}]
  end
end
