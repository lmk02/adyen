defmodule Adyen.Checkout.V37.CheckoutForwardRequest do
  @moduledoc """
  Provides struct and type for a CheckoutForwardRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V37.Amount.t() | nil,
          baseUrl: String.t(),
          merchantAccount: String.t(),
          merchantReference: String.t() | nil,
          options: Adyen.Checkout.V37.CheckoutForwardRequestOptions.t() | nil,
          paymentMethod: Adyen.Checkout.V37.CheckoutForwardRequestCard.t() | nil,
          request: Adyen.Checkout.V37.CheckoutOutgoingForwardRequest.t(),
          shopperReference: String.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
    :amount,
    :baseUrl,
    :merchantAccount,
    :merchantReference,
    :options,
    :paymentMethod,
    :request,
    :shopperReference,
    :storedPaymentMethodId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V37.Amount, :t},
      baseUrl: :string,
      merchantAccount: :string,
      merchantReference: :string,
      options: {Adyen.Checkout.V37.CheckoutForwardRequestOptions, :t},
      paymentMethod: {Adyen.Checkout.V37.CheckoutForwardRequestCard, :t},
      request: {Adyen.Checkout.V37.CheckoutOutgoingForwardRequest, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string
    ]
  end
end
