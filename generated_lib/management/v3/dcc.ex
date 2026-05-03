defmodule Adyen.Management.V3.Dcc do
  @moduledoc """
  Provides struct and type for a Dcc
  """

  @type t :: %__MODULE__{enableDcc: boolean | nil}

  defstruct [:enableDcc]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enableDcc: :boolean]
  end
end
