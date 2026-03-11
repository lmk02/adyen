defmodule Adyen.Checkout.V52.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          groups: [Adyen.Checkout.V52.PaymentMethodsGroup.t()] | nil,
          oneClickPaymentMethods: [Adyen.Checkout.V52.RecurringDetail.t()] | nil,
          paymentMethods: [Adyen.Checkout.V52.PaymentMethod.t()] | nil,
          storedPaymentMethods: [Adyen.Checkout.V52.StoredPaymentMethod.t()] | nil
        }

  defstruct [:groups, :oneClickPaymentMethods, :paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      groups: [{Adyen.Checkout.V52.PaymentMethodsGroup, :t}],
      oneClickPaymentMethods: [{Adyen.Checkout.V52.RecurringDetail, :t}],
      paymentMethods: [{Adyen.Checkout.V52.PaymentMethod, :t}],
      storedPaymentMethods: [{Adyen.Checkout.V52.StoredPaymentMethod, :t}]
    ]
  end
end
