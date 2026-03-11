defmodule Adyen.Checkout.CheckoutForwardRequest do
  @moduledoc """
  Provides struct and type for a CheckoutForwardRequest
  """

  @type t :: %__MODULE__{
          baseUrl: String.t(),
          merchantAccount: String.t(),
          merchantReference: String.t() | nil,
          options: Adyen.Checkout.CheckoutForwardRequestOptions.t() | nil,
          paymentMethod: Adyen.Checkout.CheckoutForwardRequestCard.t() | nil,
          request: Adyen.Checkout.CheckoutOutgoingForwardRequest.t(),
          shopperReference: String.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
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
      baseUrl: :string,
      merchantAccount: :string,
      merchantReference: :string,
      options: {Adyen.Checkout.CheckoutForwardRequestOptions, :t},
      paymentMethod: {Adyen.Checkout.CheckoutForwardRequestCard, :t},
      request: {Adyen.Checkout.CheckoutOutgoingForwardRequest, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string
    ]
  end
end
