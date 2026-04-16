defmodule Adyen.Checkout.V72.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          paymentMethods: [Adyen.Checkout.V72.PaymentMethod.t()] | nil,
          storedPaymentMethods: [Adyen.Checkout.V72.StoredPaymentMethod.t()] | nil
        }

  defstruct [:paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paymentMethods: [{Adyen.Checkout.V72.PaymentMethod, :t}],
      storedPaymentMethods: [{Adyen.Checkout.V72.StoredPaymentMethod, :t}]
    ]
  end
end
