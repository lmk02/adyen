defmodule Adyen.Checkout.V71.Orders do
  @moduledoc """
  Provides API endpoints related to orders
  """

  @default_client Adyen.Client

  @doc """
  Create an order

  Creates an order to be used for partial payments. Make a POST `/orders` call before making a `/payments` call when processing payments with different payment methods.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_orders(body :: Adyen.Checkout.V71.CreateOrderRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V71.CreateOrderResponse.t()}
          | {:error, Adyen.Checkout.V71.ServiceError.t()}
  def post_orders(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V71.Orders, :post_orders},
      url: "/orders",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V71.CreateOrderRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V71.CreateOrderResponse, :t}},
        {400, {Adyen.Checkout.V71.ServiceError, :t}},
        {401, {Adyen.Checkout.V71.ServiceError, :t}},
        {403, {Adyen.Checkout.V71.ServiceError, :t}},
        {422, {Adyen.Checkout.V71.ServiceError, :t}},
        {500, {Adyen.Checkout.V71.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel an order

  Cancels an order. Cancellation of an order results in an automatic rollback of all payments made in the order, either by canceling or refunding the payment, depending on the type of payment method.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_orders_cancel(body :: Adyen.Checkout.V71.CancelOrderRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V71.CancelOrderResponse.t()}
          | {:error, Adyen.Checkout.V71.ServiceError.t()}
  def post_orders_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V71.Orders, :post_orders_cancel},
      url: "/orders/cancel",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V71.CancelOrderRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V71.CancelOrderResponse, :t}},
        {400, {Adyen.Checkout.V71.ServiceError, :t}},
        {401, {Adyen.Checkout.V71.ServiceError, :t}},
        {403, {Adyen.Checkout.V71.ServiceError, :t}},
        {422, {Adyen.Checkout.V71.ServiceError, :t}},
        {500, {Adyen.Checkout.V71.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the balance of a gift card

  Retrieves the balance remaining on a shopper's gift card. To check a gift card's balance, make a POST `/paymentMethods/balance` call and include the gift card's details inside a `paymentMethod` object.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payment_methods_balance(
          body :: Adyen.Checkout.V71.BalanceCheckRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V71.BalanceCheckResponse.t()}
          | {:error, Adyen.Checkout.V71.ServiceError.t()}
  def post_payment_methods_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V71.Orders, :post_payment_methods_balance},
      url: "/paymentMethods/balance",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V71.BalanceCheckRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V71.BalanceCheckResponse, :t}},
        {400, {Adyen.Checkout.V71.ServiceError, :t}},
        {401, {Adyen.Checkout.V71.ServiceError, :t}},
        {403, {Adyen.Checkout.V71.ServiceError, :t}},
        {422, {Adyen.Checkout.V71.ServiceError, :t}},
        {500, {Adyen.Checkout.V71.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
