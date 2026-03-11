defmodule Adyen.Management.TwintInfo do
  @moduledoc """
  Provides struct and type for a TwintInfo
  """

  @type t :: %__MODULE__{logo: String.t()}

  defstruct [:logo]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logo: :string]
  end
end
