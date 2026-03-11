defmodule Adyen.Management.MinorUnitsMonetaryValue do
  @moduledoc """
  Provides struct and type for a MinorUnitsMonetaryValue
  """

  @type t :: %__MODULE__{amount: integer | nil, currencyCode: String.t() | nil}

  defstruct [:amount, :currencyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {:integer, "int32"}, currencyCode: :string]
  end
end
