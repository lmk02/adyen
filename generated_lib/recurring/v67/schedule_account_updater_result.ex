defmodule Adyen.Recurring.V67.ScheduleAccountUpdaterResult do
  @moduledoc """
  Provides struct and type for a ScheduleAccountUpdaterResult
  """

  @type t :: %__MODULE__{pspReference: String.t(), result: String.t()}

  defstruct [:pspReference, :result]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pspReference: :string, result: :string]
  end
end
