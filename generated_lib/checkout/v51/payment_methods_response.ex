defmodule Adyen.Checkout.V51.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          groups: [Adyen.Checkout.V51.PaymentMethodsGroup.t()] | nil,
          oneClickPaymentMethods: [Adyen.Checkout.V51.RecurringDetail.t()] | nil,
          paymentMethods: [Adyen.Checkout.V51.PaymentMethod.t()] | nil,
          storedPaymentMethods: [Adyen.Checkout.V51.StoredPaymentMethod.t()] | nil
        }

  defstruct [:groups, :oneClickPaymentMethods, :paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      groups: [{Adyen.Checkout.V51.PaymentMethodsGroup, :t}],
      oneClickPaymentMethods: [{Adyen.Checkout.V51.RecurringDetail, :t}],
      paymentMethods: [{Adyen.Checkout.V51.PaymentMethod, :t}],
      storedPaymentMethods: [{Adyen.Checkout.V51.StoredPaymentMethod, :t}]
    ]
  end
end
