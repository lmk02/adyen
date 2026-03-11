defmodule Adyen.Management.V3.SwishInfo do
  @moduledoc """
  Provides struct and type for a SwishInfo
  """

  @type t :: %__MODULE__{swishNumber: String.t()}

  defstruct [:swishNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [swishNumber: :string]
  end
end
