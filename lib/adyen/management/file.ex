defmodule Adyen.Management.File do
  @moduledoc """
  Provides struct and type for a File
  """

  @type t :: %__MODULE__{data: String.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :string, name: :string]
  end
end
