defmodule Adyen.Checkout.V72.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V72.Amount.t() | nil,
          deliveryAddress: Adyen.Checkout.V72.DeliveryAddress.t() | nil,
          deliveryMethods: [Adyen.Checkout.V72.DeliveryMethod.t()] | nil,
          discountAmount: Adyen.Checkout.V72.Amount.t() | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          shippingAmount: Adyen.Checkout.V72.Amount.t() | nil,
          taxTotal: Adyen.Checkout.V72.TaxTotal.t() | nil
        }

  defstruct [
    :amount,
    :deliveryAddress,
    :deliveryMethods,
    :discountAmount,
    :paymentData,
    :pspReference,
    :sessionId,
    :shippingAmount,
    :taxTotal
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V72.Amount, :t},
      deliveryAddress: {Adyen.Checkout.V72.DeliveryAddress, :t},
      deliveryMethods: [{Adyen.Checkout.V72.DeliveryMethod, :t}],
      discountAmount: {Adyen.Checkout.V72.Amount, :t},
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      shippingAmount: {Adyen.Checkout.V72.Amount, :t},
      taxTotal: {Adyen.Checkout.V72.TaxTotal, :t}
    ]
  end
end
