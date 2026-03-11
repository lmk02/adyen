defmodule Adyen.Management.Logo do
  @moduledoc """
  Provides struct and type for a Logo
  """

  @type t :: %__MODULE__{data: String.t() | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :string]
  end
end
