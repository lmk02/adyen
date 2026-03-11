defmodule Adyen.Management.V1.Hardware do
  @moduledoc """
  Provides struct and type for a Hardware
  """

  @type t :: %__MODULE__{
          displayMaximumBackLight: integer | nil,
          resetTotalsHour: integer | nil,
          restartHour: integer | nil
        }

  defstruct [:displayMaximumBackLight, :resetTotalsHour, :restartHour]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayMaximumBackLight: {:integer, "int32"},
      resetTotalsHour: {:integer, "int32"},
      restartHour: {:integer, "int32"}
    ]
  end
end
