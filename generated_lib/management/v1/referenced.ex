defmodule Adyen.Management.V1.Referenced do
  @moduledoc """
  Provides struct and type for a Referenced
  """

  @type t :: %__MODULE__{enableStandaloneRefunds: boolean | nil}

  defstruct [:enableStandaloneRefunds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enableStandaloneRefunds: :boolean]
  end
end
