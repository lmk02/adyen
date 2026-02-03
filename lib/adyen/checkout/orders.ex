defmodule Adyen.Checkout.Orders do
  @moduledoc """
  Provides API endpoints related to orders
  """

  alias Adyen.Checkout.BalanceCheckRequest
  alias Adyen.Checkout.BalanceCheckResponse
  alias Adyen.Checkout.CancelOrderRequest
  alias Adyen.Checkout.CancelOrderResponse
  alias Adyen.Checkout.CreateOrderRequest
  alias Adyen.Checkout.CreateOrderResponse
  alias Adyen.Checkout.Orders
  alias Adyen.Checkout.ServiceError

  @default_client Adyen.Client

  @doc """
  Create an order

  Creates an order to be used for partial payments. Make a POST `/orders` call before making a `/payments` call when processing payments with different payment methods.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_order(body :: CreateOrderRequest.t(), opts :: keyword) ::
          {:ok, CreateOrderResponse.t()}
          | {:error, ServiceError.t()}
  def create_order(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Orders, :create_order},
      url: "/orders",
      body: body,
      method: :post,
      request: [{"application/json", {CreateOrderRequest, :t}}],
      response: [
        {200, {CreateOrderResponse, :t}},
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
  Cancel an order

  Cancels an order. Cancellation of an order results in an automatic rollback of all payments made in the order, either by canceling or refunding the payment, depending on the type of payment method.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_orders_cancel(body :: CancelOrderRequest.t(), opts :: keyword) ::
          {:ok, CancelOrderResponse.t()}
          | {:error, ServiceError.t()}
  def create_orders_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Orders, :create_orders_cancel},
      url: "/orders/cancel",
      body: body,
      method: :post,
      request: [{"application/json", {CancelOrderRequest, :t}}],
      response: [
        {200, {CancelOrderResponse, :t}},
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
  Get the balance of a gift card

  Retrieves the balance remaining on a shopper's gift card. To check a gift card's balance, make a POST `/paymentMethods/balance` call and include the gift card's details inside a `paymentMethod` object.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_methods_balance(
          body :: BalanceCheckRequest.t(),
          opts :: keyword
        ) ::
          {:ok, BalanceCheckResponse.t()}
          | {:error, ServiceError.t()}
  def create_payment_methods_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Orders, :create_payment_methods_balance},
      url: "/paymentMethods/balance",
      body: body,
      method: :post,
      request: [{"application/json", {BalanceCheckRequest, :t}}],
      response: [
        {200, {BalanceCheckResponse, :t}},
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
