defmodule Adyen.Checkout.PaymentLinks do
  @moduledoc """
  Provides API endpoints related to payment links
  """

  @default_client Adyen.Client

  @doc """
  Get a payment link

  Retrieves the payment link details using the payment link `id`.
  """
  @spec get_payment_link(linkId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.PaymentLinkResponse.t()}
          | {:error, Adyen.Checkout.ServiceError.t()}
  def get_payment_link(linkId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId],
      call: {Adyen.Checkout.PaymentLinks, :get_payment_link},
      url: "/paymentLinks/#{linkId}",
      method: :get,
      response: [
        {200, {Adyen.Checkout.PaymentLinkResponse, :t}},
        {400, {Adyen.Checkout.ServiceError, :t}},
        {401, {Adyen.Checkout.ServiceError, :t}},
        {403, {Adyen.Checkout.ServiceError, :t}},
        {422, {Adyen.Checkout.ServiceError, :t}},
        {500, {Adyen.Checkout.ServiceError, :t}}
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
          body :: Adyen.Checkout.UpdatePaymentLinkRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.PaymentLinkResponse.t()}
          | {:error, Adyen.Checkout.ServiceError.t()}
  def update_payment_link(linkId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId, body: body],
      call: {Adyen.Checkout.PaymentLinks, :update_payment_link},
      url: "/paymentLinks/#{linkId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Checkout.UpdatePaymentLinkRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.PaymentLinkResponse, :t}},
        {400, {Adyen.Checkout.ServiceError, :t}},
        {401, {Adyen.Checkout.ServiceError, :t}},
        {403, {Adyen.Checkout.ServiceError, :t}},
        {422, {Adyen.Checkout.ServiceError, :t}},
        {500, {Adyen.Checkout.ServiceError, :t}}
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
  @spec create_payment_link(body :: Adyen.Checkout.PaymentLinkRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.PaymentLinkResponse.t()}
          | {:error, Adyen.Checkout.ServiceError.t()}
  def create_payment_link(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.PaymentLinks, :create_payment_link},
      url: "/paymentLinks",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.PaymentLinkRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.PaymentLinkResponse, :t}},
        {400, {Adyen.Checkout.ServiceError, :t}},
        {401, {Adyen.Checkout.ServiceError, :t}},
        {403, {Adyen.Checkout.ServiceError, :t}},
        {422, {Adyen.Checkout.ServiceError, :t}},
        {500, {Adyen.Checkout.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
