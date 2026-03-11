defmodule Adyen.Checkout.V51.Redirect do
  @moduledoc """
  Provides struct and type for a Redirect
  """

  @type t :: %__MODULE__{data: map | nil, method: String.t() | nil, url: String.t() | nil}

  defstruct [:data, :method, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :map, method: {:enum, ["GET", "POST"]}, url: :string]
  end
end
