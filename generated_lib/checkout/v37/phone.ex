defmodule Adyen.Checkout.V37.Phone do
  @moduledoc """
  Provides struct and type for a Phone
  """

  @type t :: %__MODULE__{cc: String.t() | nil, subscriber: String.t() | nil}

  defstruct [:cc, :subscriber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [cc: :string, subscriber: :string]
  end
end
