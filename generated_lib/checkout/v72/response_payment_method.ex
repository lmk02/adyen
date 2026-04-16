defmodule Adyen.Checkout.V72.ResponsePaymentMethod do
  @moduledoc """
  Provides struct and type for a ResponsePaymentMethod
  """

  @type t :: %__MODULE__{brand: String.t() | nil, type: String.t() | nil}

  defstruct [:brand, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [brand: :string, type: :string]
  end
end
