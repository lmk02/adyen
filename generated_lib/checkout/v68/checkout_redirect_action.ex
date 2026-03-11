defmodule Adyen.Checkout.V68.CheckoutRedirectAction do
  @moduledoc """
  Provides struct and type for a CheckoutRedirectAction
  """

  @type t :: %__MODULE__{
          data: map | nil,
          method: String.t() | nil,
          paymentMethodType: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:data, :method, :paymentMethodType, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: :map,
      method: :string,
      paymentMethodType: :string,
      type: {:const, "redirect"},
      url: :string
    ]
  end
end
