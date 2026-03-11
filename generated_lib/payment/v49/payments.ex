defmodule Adyen.Payment.V49.Payments do
  @moduledoc """
  Provides API endpoints related to payments
  """

  @default_client Adyen.Client

  @doc """
  Create an authorisation

  Creates a payment with a unique reference (`pspReference`) and attempts to obtain an authorisation hold. For cards, this amount can be captured or cancelled later. Non-card payment methods typically don't support this and will automatically capture as part of the authorisation.
  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments`](https://docs.adyen.com/api-explorer/#/CheckoutService/payments) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_authorise(body :: Adyen.Payment.V49.PaymentRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payment.V49.PaymentResult.t()}
          | {:error, Adyen.Payment.V49.ServiceError.t()}
  def post_authorise(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V49.Payments, :post_authorise},
      url: "/authorise",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V49.PaymentRequest, :t}}],
      response: [
        {200, {Adyen.Payment.V49.PaymentResult, :t}},
        {400, {Adyen.Payment.V49.ServiceError, :t}},
        {401, {Adyen.Payment.V49.ServiceError, :t}},
        {403, {Adyen.Payment.V49.ServiceError, :t}},
        {422, {Adyen.Payment.V49.ServiceError, :t}},
        {500, {Adyen.Payment.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete a 3DS authorisation

  For an authenticated 3D Secure session, completes the payment authorisation. This endpoint must receive the `md` and `paResponse` parameters that you get from the card issuer after a shopper pays via 3D Secure.

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce/3d-secure). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments/details`](https://docs.adyen.com/api-explorer/#/CheckoutService/payments/details) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_authorise3_d(body :: Adyen.Payment.V49.PaymentRequest3D.t(), opts :: keyword) ::
          {:ok, Adyen.Payment.V49.PaymentResult.t()}
          | {:error, Adyen.Payment.V49.ServiceError.t()}
  def post_authorise3_d(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V49.Payments, :post_authorise3_d},
      url: "/authorise3d",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V49.PaymentRequest3D, :t}}],
      response: [
        {200, {Adyen.Payment.V49.PaymentResult, :t}},
        {400, {Adyen.Payment.V49.ServiceError, :t}},
        {401, {Adyen.Payment.V49.ServiceError, :t}},
        {403, {Adyen.Payment.V49.ServiceError, :t}},
        {422, {Adyen.Payment.V49.ServiceError, :t}},
        {500, {Adyen.Payment.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete a 3DS2 authorisation

  For an authenticated 3D Secure 2 session, completes the payment authorisation. This endpoint must receive the `threeDS2Token` and `threeDS2Result` parameters.

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce/3d-secure). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments/details`](https://docs.adyen.com/api-explorer/#/CheckoutService/payments/details) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_authorise3_ds2(body :: Adyen.Payment.V49.PaymentRequest3Ds2.t(), opts :: keyword) ::
          {:ok, Adyen.Payment.V49.PaymentResult.t()}
          | {:error, Adyen.Payment.V49.ServiceError.t()}
  def post_authorise3_ds2(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V49.Payments, :post_authorise3_ds2},
      url: "/authorise3ds2",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V49.PaymentRequest3Ds2, :t}}],
      response: [
        {200, {Adyen.Payment.V49.PaymentResult, :t}},
        {400, {Adyen.Payment.V49.ServiceError, :t}},
        {401, {Adyen.Payment.V49.ServiceError, :t}},
        {403, {Adyen.Payment.V49.ServiceError, :t}},
        {422, {Adyen.Payment.V49.ServiceError, :t}},
        {500, {Adyen.Payment.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the 3DS2 authentication result

  Retrieves the `threeDS2Result` after doing a 3D Secure 2 authentication only.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_retrieve3_ds2_result(
          body :: Adyen.Payment.V49.ThreeDs2ResultRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Payment.V49.ThreeDs2ResultResponse.t()}
          | {:error, Adyen.Payment.V49.ServiceError.t()}
  def post_retrieve3_ds2_result(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V49.Payments, :post_retrieve3_ds2_result},
      url: "/retrieve3ds2Result",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V49.ThreeDs2ResultRequest, :t}}],
      response: [
        {200, {Adyen.Payment.V49.ThreeDs2ResultResponse, :t}},
        {400, {Adyen.Payment.V49.ServiceError, :t}},
        {401, {Adyen.Payment.V49.ServiceError, :t}},
        {403, {Adyen.Payment.V49.ServiceError, :t}},
        {422, {Adyen.Payment.V49.ServiceError, :t}},
        {500, {Adyen.Payment.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
