defmodule Adyen.Management.V1.LocalShopperStatement do
  @moduledoc """
  Provides struct and type for a LocalShopperStatement
  """

  @type t :: %__MODULE__{script: String.t(), value: String.t()}

  defstruct [:script, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [script: :string, value: :string]
  end
end
