defmodule Adyen.Management.V3.Unreferenced do
  @moduledoc """
  Provides struct and type for a Unreferenced
  """

  @type t :: %__MODULE__{enableUnreferencedRefunds: boolean | nil}

  defstruct [:enableUnreferencedRefunds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enableUnreferencedRefunds: :boolean]
  end
end
