defmodule Adyen.TestCard.AvsAddress do
  @moduledoc """
  Provides struct and type for a AvsAddress
  """

  @type t :: %__MODULE__{streetAddress: String.t(), zip: String.t() | nil}

  defstruct [:streetAddress, :zip]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [streetAddress: :string, zip: :string]
  end
end
