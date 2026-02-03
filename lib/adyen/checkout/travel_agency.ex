defmodule Adyen.Checkout.TravelAgency do
  @moduledoc """
  Provides struct and type for a TravelAgency
  """

  @type t :: %__MODULE__{code: String.t() | nil, name: String.t() | nil}

  defstruct [:code, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [code: :string, name: :string]
  end
end
