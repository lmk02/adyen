defmodule Adyen.Checkout.V67.Amounts do
  @moduledoc """
  Provides struct and type for a Amounts
  """

  @type t :: %__MODULE__{currency: String.t(), values: [integer]}

  defstruct [:currency, :values]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currency: :string, values: [integer: "int64"]]
  end
end
