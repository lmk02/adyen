defmodule Adyen.Checkout.V70.CheckoutForwardResponse do
  @moduledoc """
  Provides struct and type for a CheckoutForwardResponse
  """

  @type t :: %__MODULE__{
          merchantReference: String.t() | nil,
          response: Adyen.Checkout.V70.CheckoutForwardResponseFromUrl.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:merchantReference, :response, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantReference: :string,
      response: {Adyen.Checkout.V70.CheckoutForwardResponseFromUrl, :t},
      storedPaymentMethodId: :string
    ]
  end
end
