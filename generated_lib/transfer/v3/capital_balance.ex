defmodule Adyen.Transfer.V3.CapitalBalance do
  @moduledoc """
  Provides struct and type for a CapitalBalance
  """

  @type t :: %__MODULE__{currency: String.t(), fee: integer, principal: integer, total: integer}

  defstruct [:currency, :fee, :principal, :total]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      currency: :string,
      fee: {:integer, "int64"},
      principal: {:integer, "int64"},
      total: {:integer, "int64"}
    ]
  end
end
