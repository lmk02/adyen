defmodule Adyen.Checkout.V37.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          groups: [Adyen.Checkout.V37.PaymentMethodsGroup.t()] | nil,
          oneClickPaymentMethods: [Adyen.Checkout.V37.RecurringDetail.t()] | nil,
          paymentMethods: [Adyen.Checkout.V37.PaymentMethod.t()] | nil
        }

  defstruct [:groups, :oneClickPaymentMethods, :paymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      groups: [{Adyen.Checkout.V37.PaymentMethodsGroup, :t}],
      oneClickPaymentMethods: [{Adyen.Checkout.V37.RecurringDetail, :t}],
      paymentMethods: [{Adyen.Checkout.V37.PaymentMethod, :t}]
    ]
  end
end
