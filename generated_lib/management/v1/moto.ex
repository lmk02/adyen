defmodule Adyen.Management.V1.Moto do
  @moduledoc """
  Provides struct and type for a Moto
  """

  @type t :: %__MODULE__{enableMoto: boolean | nil, maxAmount: integer | nil}

  defstruct [:enableMoto, :maxAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enableMoto: :boolean, maxAmount: {:integer, "int32"}]
  end
end
