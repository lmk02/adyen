defmodule Adyen.Management.V3.Currency do
  @moduledoc """
  Provides struct and type for a Currency
  """

  @type t :: %__MODULE__{
          amount: integer | nil,
          currencyCode: String.t(),
          maxAmount: integer | nil,
          percentage: number | nil
        }

  defstruct [:amount, :currencyCode, :maxAmount, :percentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {:integer, "int32"},
      currencyCode: :string,
      maxAmount: {:integer, "int32"},
      percentage: {:number, "double"}
    ]
  end
end
