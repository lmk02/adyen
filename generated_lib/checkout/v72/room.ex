defmodule Adyen.Checkout.V72.Room do
  @moduledoc """
  Provides struct and type for a Room
  """

  @type t :: %__MODULE__{numberOfNights: integer | nil, rate: integer | nil}

  defstruct [:numberOfNights, :rate]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [numberOfNights: {:integer, "int32"}, rate: {:integer, "int64"}]
  end
end
