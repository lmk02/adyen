defmodule Adyen.Checkout.V51.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V51.Amount.t() | nil,
          deliveryMethods: [Adyen.Checkout.V51.DeliveryMethod.t()] | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          taxTotal: Adyen.Checkout.V51.TaxTotal.t() | nil
        }

  defstruct [:amount, :deliveryMethods, :paymentData, :pspReference, :sessionId, :taxTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V51.Amount, :t},
      deliveryMethods: [{Adyen.Checkout.V51.DeliveryMethod, :t}],
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      taxTotal: {Adyen.Checkout.V51.TaxTotal, :t}
    ]
  end
end
