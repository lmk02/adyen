defmodule Adyen.Checkout.PaymentValidations do
  @moduledoc """
  Provides struct and type for a PaymentValidations
  """

  alias Adyen.Checkout.PaymentValidationsNameRequest

  @type t :: %__MODULE__{name: PaymentValidationsNameRequest.t() | nil}

  defstruct [:name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {PaymentValidationsNameRequest, :t}]
  end
end
