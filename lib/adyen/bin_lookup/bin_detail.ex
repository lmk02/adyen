defmodule Adyen.BinLookup.BinDetail do
  @moduledoc """
  Provides struct and type for a BinDetail
  """

  @type t :: %__MODULE__{issuerCountry: String.t() | nil}

  defstruct [:issuerCountry]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [issuerCountry: :string]
  end
end
