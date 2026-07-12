defmodule Adyen.BalancePlatform.V2.LocalTime do
  @moduledoc """
  Provides struct and type for a LocalTime
  """

  @type t :: %__MODULE__{
          hour: integer | nil,
          minute: integer | nil,
          nano: integer | nil,
          second: integer | nil
        }

  defstruct [:hour, :minute, :nano, :second]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      hour: {:integer, "int32"},
      minute: {:integer, "int32"},
      nano: {:integer, "int32"},
      second: {:integer, "int32"}
    ]
  end
end
