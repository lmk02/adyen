defmodule Adyen.Transfer.V2.Bank do
  @moduledoc """
  Provides struct and type for a Bank
  """

  @type t :: %__MODULE__{priority: String.t() | nil}

  defstruct [:priority]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]}]
  end
end
