defmodule Adyen.Checkout.V67.UtilityResponse do
  @moduledoc """
  Provides struct and type for a UtilityResponse
  """

  @type t :: %__MODULE__{originKeys: map | nil}

  defstruct [:originKeys]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [originKeys: :map]
  end
end
