defmodule Adyen.Checkout.PaymentValidationsResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsResponse
  """

  alias Adyen.Checkout.PaymentValidationsNameResponse

  @type t :: %__MODULE__{name: PaymentValidationsNameResponse.t() | nil}

  defstruct [:name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {PaymentValidationsNameResponse, :t}]
  end
end
