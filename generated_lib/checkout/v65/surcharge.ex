defmodule Adyen.Checkout.V65.Surcharge do
  @moduledoc """
  Provides struct and type for a Surcharge
  """

  @type t :: %__MODULE__{value: integer}

  defstruct [:value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [value: {:integer, "int64"}]
  end
end
