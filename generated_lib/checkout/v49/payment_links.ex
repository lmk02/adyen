defmodule Adyen.Checkout.V49.PaymentLinks do
  @moduledoc """
  Provides API endpoints related to payment links
  """

  @default_client Adyen.Client

  @doc """
  Get a payment link

  Retrieves the payment link details using the payment link `id`.
  """
  @spec get_payment_links_link_id(linkId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V49.PaymentLinkResponse.t()}
          | {:error, Adyen.Checkout.V49.ServiceError.t()}
  def get_payment_links_link_id(linkId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId],
      call: {Adyen.Checkout.V49.PaymentLinks, :get_payment_links_link_id},
      url: "/paymentLinks/#{linkId}",
      method: :get,
      response: [
        {200, {Adyen.Checkout.V49.PaymentLinkResponse, :t}},
        {400, {Adyen.Checkout.V49.ServiceError, :t}},
        {401, {Adyen.Checkout.V49.ServiceError, :t}},
        {403, {Adyen.Checkout.V49.ServiceError, :t}},
        {422, {Adyen.Checkout.V49.ServiceError, :t}},
        {500, {Adyen.Checkout.V49.ServiceError, :t}}
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
  @spec patch_payment_links_link_id(
          linkId :: String.t(),
          body :: Adyen.Checkout.V49.UpdatePaymentLinkRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V49.PaymentLinkResponse.t()}
          | {:error, Adyen.Checkout.V49.ServiceError.t()}
  def patch_payment_links_link_id(linkId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId, body: body],
      call: {Adyen.Checkout.V49.PaymentLinks, :patch_payment_links_link_id},
      url: "/paymentLinks/#{linkId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Checkout.V49.UpdatePaymentLinkRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V49.PaymentLinkResponse, :t}},
        {400, {Adyen.Checkout.V49.ServiceError, :t}},
        {401, {Adyen.Checkout.V49.ServiceError, :t}},
        {403, {Adyen.Checkout.V49.ServiceError, :t}},
        {422, {Adyen.Checkout.V49.ServiceError, :t}},
        {500, {Adyen.Checkout.V49.ServiceError, :t}}
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
  @spec post_payment_links(body :: Adyen.Checkout.V49.PaymentLinkRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V49.PaymentLinkResponse.t()}
          | {:error, Adyen.Checkout.V49.ServiceError.t()}
  def post_payment_links(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V49.PaymentLinks, :post_payment_links},
      url: "/paymentLinks",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V49.PaymentLinkRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V49.PaymentLinkResponse, :t}},
        {400, {Adyen.Checkout.V49.ServiceError, :t}},
        {401, {Adyen.Checkout.V49.ServiceError, :t}},
        {403, {Adyen.Checkout.V49.ServiceError, :t}},
        {422, {Adyen.Checkout.V49.ServiceError, :t}},
        {500, {Adyen.Checkout.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
