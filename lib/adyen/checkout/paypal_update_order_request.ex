defmodule Adyen.Checkout.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.DeliveryMethod
  alias Adyen.Checkout.TaxTotal

  @type t :: %__MODULE__{
          amount: Amount.t() | nil,
          deliveryMethods: [DeliveryMethod.t()] | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          taxTotal: TaxTotal.t() | nil
        }

  defstruct [:amount, :deliveryMethods, :paymentData, :pspReference, :sessionId, :taxTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      deliveryMethods: [{DeliveryMethod, :t}],
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      taxTotal: {TaxTotal, :t}
    ]
  end
end
