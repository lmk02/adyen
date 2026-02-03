defmodule Adyen.Checkout.PaymentLinks do
  @moduledoc """
  Provides API endpoints related to payment links
  """

  alias Adyen.Checkout.PaymentLinkRequest
  alias Adyen.Checkout.PaymentLinkResponse
  alias Adyen.Checkout.PaymentLinks
  alias Adyen.Checkout.ServiceError
  alias Adyen.Checkout.UpdatePaymentLinkRequest

  @default_client Adyen.Client

  @doc """
  Get a payment link

  Retrieves the payment link details using the payment link `id`.
  """
  @spec get_payment_link(linkId :: String.t(), opts :: keyword) ::
          {:ok, PaymentLinkResponse.t()}
          | {:error, ServiceError.t()}
  def get_payment_link(linkId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId],
      call: {PaymentLinks, :get_payment_link},
      url: "/paymentLinks/#{linkId}",
      method: :get,
      response: [
        {200, {PaymentLinkResponse, :t}},
        {400, {ServiceError, :t}},
        {401, {ServiceError, :t}},
        {403, {ServiceError, :t}},
        {422, {ServiceError, :t}},
        {500, {ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the status of a payment link

  Updates the status of a payment link. Use this endpoint to [force the expiry of a payment link](https://docs.adyen.com/online-payments/pay-by-link#update-payment-link-status).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_payment_link(
          linkId :: String.t(),
          body :: UpdatePaymentLinkRequest.t(),
          opts :: keyword
        ) ::
          {:ok, PaymentLinkResponse.t()}
          | {:error, ServiceError.t()}
  def update_payment_link(linkId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId, body: body],
      call: {PaymentLinks, :update_payment_link},
      url: "/paymentLinks/#{linkId}",
      body: body,
      method: :patch,
      request: [{"application/json", {UpdatePaymentLinkRequest, :t}}],
      response: [
        {200, {PaymentLinkResponse, :t}},
        {400, {ServiceError, :t}},
        {401, {ServiceError, :t}},
        {403, {ServiceError, :t}},
        {422, {ServiceError, :t}},
        {500, {ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a payment link

  Creates a payment link to a [Pay by Link](https://docs.adyen.com/unified-commerce/pay-by-link/) page where the shopper can pay. The list of payment methods presented to the shopper depends on the `currency` and `country` parameters sent in the request.

  For more information, refer to [Pay by Link documentation](https://docs.adyen.com/online-payments/pay-by-link#create-payment-links-through-api).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_link(body :: PaymentLinkRequest.t(), opts :: keyword) ::
          {:ok, PaymentLinkResponse.t()}
          | {:error, ServiceError.t()}
  def create_payment_link(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {PaymentLinks, :create_payment_link},
      url: "/paymentLinks",
      body: body,
      method: :post,
      request: [{"application/json", {PaymentLinkRequest, :t}}],
      response: [
        {201, {PaymentLinkResponse, :t}},
        {400, {ServiceError, :t}},
        {401, {ServiceError, :t}},
        {403, {ServiceError, :t}},
        {422, {ServiceError, :t}},
        {500, {ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
