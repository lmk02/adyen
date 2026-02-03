defmodule Adyen.BalancePlatform.Expiry do
  @moduledoc """
  Provides struct and type for a Expiry
  """

  @type t :: %__MODULE__{month: String.t() | nil, year: String.t() | nil}

  defstruct [:month, :year]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [month: :string, year: :string]
  end
end
