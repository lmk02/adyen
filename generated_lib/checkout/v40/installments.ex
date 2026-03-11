defmodule Adyen.Checkout.V40.Installments do
  @moduledoc """
  Provides struct and type for a Installments
  """

  @type t :: %__MODULE__{value: integer}

  defstruct [:value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [value: {:integer, "int32"}]
  end
end
