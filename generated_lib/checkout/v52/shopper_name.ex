defmodule Adyen.Checkout.V52.ShopperName do
  @moduledoc """
  Provides struct and type for a ShopperName
  """

  @type t :: %__MODULE__{firstName: String.t(), lastName: String.t()}

  defstruct [:firstName, :lastName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [firstName: :string, lastName: :string]
  end
end
