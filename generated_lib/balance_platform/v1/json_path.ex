defmodule Adyen.BalancePlatform.V1.JSONPath do
  @moduledoc """
  Provides struct and type for a JSONPath
  """

  @type t :: %__MODULE__{content: [String.t()] | nil}

  defstruct [:content]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: [:string]]
  end
end
