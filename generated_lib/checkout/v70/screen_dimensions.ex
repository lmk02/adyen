defmodule Adyen.Checkout.V70.ScreenDimensions do
  @moduledoc """
  Provides struct and type for a ScreenDimensions
  """

  @type t :: %__MODULE__{height: integer | nil, width: integer | nil}

  defstruct [:height, :width]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [height: {:integer, "int32"}, width: {:integer, "int32"}]
  end
end
