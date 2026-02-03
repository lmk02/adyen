defmodule Adyen.Checkout.CheckoutForwardRequest do
  @moduledoc """
  Provides struct and type for a CheckoutForwardRequest
  """

  alias Adyen.Checkout.CheckoutForwardRequestCard
  alias Adyen.Checkout.CheckoutForwardRequestOptions
  alias Adyen.Checkout.CheckoutOutgoingForwardRequest

  @type t :: %__MODULE__{
          baseUrl: String.t(),
          merchantAccount: String.t(),
          merchantReference: String.t() | nil,
          options: CheckoutForwardRequestOptions.t() | nil,
          paymentMethod: CheckoutForwardRequestCard.t() | nil,
          request: CheckoutOutgoingForwardRequest.t(),
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
      options: {CheckoutForwardRequestOptions, :t},
      paymentMethod: {CheckoutForwardRequestCard, :t},
      request: {CheckoutOutgoingForwardRequest, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string
    ]
  end
end
