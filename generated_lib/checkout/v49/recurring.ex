defmodule Adyen.Checkout.V49.Recurring do
  @moduledoc """
  Provides API endpoints related to recurring
  """

  @default_client Adyen.Client

  @doc """
  Forward stored payment details

  Forwards the payment details you stored with Adyen to a third-party that you specify and returns the response from the third-party. Supports forwarding stored card details or [network tokens](https://docs.adyen.com/online-payments/network-tokenization). For more information, see [Forward stored payment details](https://docs.adyen.com/online-payments/tokenization/forward-payment-details).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_forward(body :: Adyen.Checkout.V49.CheckoutForwardRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V49.CheckoutForwardResponse.t()} | :error
  def post_forward(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V49.Recurring, :post_forward},
      url: "/forward",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V49.CheckoutForwardRequest, :t}}],
      response: [{200, {Adyen.Checkout.V49.CheckoutForwardResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Create a token to store payment details

  Creates a token to store the shopper's payment details. This token can be used for the shopper's future payments.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_stored_payment_methods(
          body :: Adyen.Checkout.V49.StoredPaymentMethodRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Checkout.V49.StoredPaymentMethodResource.t()} | :error
  def post_stored_payment_methods(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V49.Recurring, :post_stored_payment_methods},
      url: "/storedPaymentMethods",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V49.StoredPaymentMethodRequest, :t}}],
      response: [{201, {Adyen.Checkout.V49.StoredPaymentMethodResource, :t}}],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          contract: String.t() | nil,
          recurringDetailName: String.t() | nil,
          recurringExpiry: DateTime.t() | nil,
          recurringFrequency: String.t() | nil,
          tokenService: String.t() | nil
        }

  defstruct [
    :contract,
    :recurringDetailName,
    :recurringExpiry,
    :recurringFrequency,
    :tokenService
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contract: {:enum, ["ONECLICK", "ONECLICK,RECURRING", "RECURRING", "PAYOUT", "EXTERNAL"]},
      recurringDetailName: :string,
      recurringExpiry: {:string, "date-time"},
      recurringFrequency: :string,
      tokenService:
        {:enum, ["VISATOKENSERVICE", "MCTOKENSERVICE", "AMEXTOKENSERVICE", "TOKEN_SHARING"]}
    ]
  end
end
