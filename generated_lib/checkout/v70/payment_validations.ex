defmodule Adyen.Checkout.V70.PaymentValidations do
  @moduledoc """
  Provides struct and type for a PaymentValidations
  """

  @type t :: %__MODULE__{name: Adyen.Checkout.V70.PaymentValidationsNameRequest.t() | nil}

  defstruct [:name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {Adyen.Checkout.V70.PaymentValidationsNameRequest, :t}]
  end
end
