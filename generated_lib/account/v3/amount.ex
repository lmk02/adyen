defmodule Adyen.Account.V3.Amount do
  @moduledoc """
  Provides struct and type for a Amount
  """

  @type t :: %__MODULE__{currency: String.t(), value: integer}

  defstruct [:currency, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currency: :string, value: {:integer, "int64"}]
  end
end
