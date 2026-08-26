defmodule Adyen.Transfer.V4.USAchTracingData do
  @moduledoc """
  Provides struct and type for a USAchTracingData
  """

  @type t :: %__MODULE__{traceNumber: String.t(), type: String.t()}

  defstruct [:traceNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [traceNumber: :string, type: {:const, "usAch"}]
  end
end
