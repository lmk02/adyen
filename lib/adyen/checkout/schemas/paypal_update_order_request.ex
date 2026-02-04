defmodule Adyen.Checkout.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.Amount.t() | nil,
          deliveryMethods: [Adyen.Checkout.DeliveryMethod.t()] | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          taxTotal: Adyen.Checkout.TaxTotal.t() | nil
        }

  defstruct [:amount, :deliveryMethods, :paymentData, :pspReference, :sessionId, :taxTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.Amount, :t},
      deliveryMethods: [{Adyen.Checkout.DeliveryMethod, :t}],
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      taxTotal: {Adyen.Checkout.TaxTotal, :t}
    ]
  end
end
