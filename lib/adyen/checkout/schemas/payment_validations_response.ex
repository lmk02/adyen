defmodule Adyen.Checkout.PaymentValidationsResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsResponse
  """

  @type t :: %__MODULE__{name: Adyen.Checkout.PaymentValidationsNameResponse.t() | nil}

  defstruct [:name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {Adyen.Checkout.PaymentValidationsNameResponse, :t}]
  end
end
