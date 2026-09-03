defmodule Adyen.BalancePlatform.V2.PatchableAmountDTO do
  @moduledoc """
  Provides struct and type for a PatchableAmountDTO
  """

  @type t :: %__MODULE__{currency: String.t() | nil, value: integer | nil}

  defstruct [:currency, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currency: :string, value: {:integer, "int64"}]
  end
end
