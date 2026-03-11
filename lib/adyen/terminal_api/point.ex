defmodule Adyen.TerminalAPI.Point do
  @moduledoc """
  Provides struct and type for a Point
  """

  @type t :: %__MODULE__{X: String.t(), Y: String.t()}

  defstruct [:X, :Y]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [X: :string, Y: :string]
  end
end
