defmodule Adyen.Payment.V68.Payments do
  @moduledoc """
  Provides API endpoints related to payments
  """

  @default_client Adyen.Client

  @doc """
  Create an authorisation

  Creates a payment with a unique reference (`pspReference`) and attempts to obtain an authorisation hold. For cards, this amount can be captured or cancelled later. Non-card payment methods typically don't support this and will automatically capture as part of the authorisation.

  > This endpoint is [inactive](https://docs.adyen.com/online-payments/upgrade-your-integration#checkout-api-lifecycle) and is no longer supported for new integrations.
  > * If you are building a new integration, use the Checkout API [`/payments`](https://docs.adyen.com/api-explorer/Checkout/latest/post/payments) endpoint instead.
  > * If you have an existing integration using this endpoint, reach out to your Adyen contact and [migrate to the Checkout API](https://docs.adyen.com/online-payments/upgrade-your-integration/migrate-to-checkout-api).

  >The Checkout API enables your [online payments](https://docs.adyen.com/online-payments) integration to accept all supported payment methods, use the latest features, and access more benefits.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_authorise(body :: Adyen.Payment.V68.PaymentRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payment.V68.PaymentResult.t()}
          | {:error, Adyen.Payment.V68.ServiceError.t()}
  def post_authorise(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V68.Payments, :post_authorise},
      url: "/authorise",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V68.PaymentRequest, :t}}],
      response: [
        {200, {Adyen.Payment.V68.PaymentResult, :t}},
        {400, {Adyen.Payment.V68.ServiceError, :t}},
        {401, {Adyen.Payment.V68.ServiceError, :t}},
        {403, {Adyen.Payment.V68.ServiceError, :t}},
        {422, {Adyen.Payment.V68.ServiceError, :t}},
        {500, {Adyen.Payment.V68.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete a 3DS authorisation

  For an authenticated 3D Secure session, completes the payment authorisation. This endpoint must receive the `md` and `paResponse` parameters that you get from the card issuer after a shopper pays via 3D Secure.

  > This endpoint is [inactive](https://docs.adyen.com/online-payments/upgrade-your-integration#checkout-api-lifecycle) and is no longer supported for new integrations.
  > * If you are building a new integration, use the Checkout API [`/payments/details`](https://docs.adyen.com/api-explorer/Checkout/latest/post/payments/details) endpoint instead.
  > * If you have an existing integration using this endpoint, reach out to your Adyen contact and [migrate to the Checkout API](https://docs.adyen.com/online-payments/upgrade-your-integration/migrate-to-checkout-api).

  > The Checkout API enables your [online payments](https://docs.adyen.com/online-payments) integration to accept all supported payment methods, use the latest features, and access more benefits.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_authorise3_d(body :: Adyen.Payment.V68.PaymentRequest3D.t(), opts :: keyword) ::
          {:ok, Adyen.Payment.V68.PaymentResult.t()}
          | {:error, Adyen.Payment.V68.ServiceError.t()}
  def post_authorise3_d(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V68.Payments, :post_authorise3_d},
      url: "/authorise3d",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V68.PaymentRequest3D, :t}}],
      response: [
        {200, {Adyen.Payment.V68.PaymentResult, :t}},
        {400, {Adyen.Payment.V68.ServiceError, :t}},
        {401, {Adyen.Payment.V68.ServiceError, :t}},
        {403, {Adyen.Payment.V68.ServiceError, :t}},
        {422, {Adyen.Payment.V68.ServiceError, :t}},
        {500, {Adyen.Payment.V68.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete a 3DS2 authorisation

  For an authenticated 3D Secure 2 session, completes the payment authorisation. This endpoint must receive the `threeDS2Token` and `threeDS2Result` parameters.

  > This endpoint is [inactive](https://docs.adyen.com/online-payments/upgrade-your-integration#checkout-api-lifecycle) and is no longer supported for new integrations.
  > * If you are building a new integration, use the Checkout API [`/payments/details`](https://docs.adyen.com/api-explorer/Checkout/latest/post/payments/details) endpoint instead.
  > * If you have an existing integration using this endpoint, reach out to your Adyen contact and [migrate to the Checkout API](https://docs.adyen.com/online-payments/upgrade-your-integration/migrate-to-checkout-api).

  >The Checkout API enables your [online payments](https://docs.adyen.com/online-payments) integration to accept all supported payment methods, use the latest features, and access more benefits.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_authorise3_ds2(body :: Adyen.Payment.V68.PaymentRequest3Ds2.t(), opts :: keyword) ::
          {:ok, Adyen.Payment.V68.PaymentResult.t()}
          | {:error, Adyen.Payment.V68.ServiceError.t()}
  def post_authorise3_ds2(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V68.Payments, :post_authorise3_ds2},
      url: "/authorise3ds2",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V68.PaymentRequest3Ds2, :t}}],
      response: [
        {200, {Adyen.Payment.V68.PaymentResult, :t}},
        {400, {Adyen.Payment.V68.ServiceError, :t}},
        {401, {Adyen.Payment.V68.ServiceError, :t}},
        {403, {Adyen.Payment.V68.ServiceError, :t}},
        {422, {Adyen.Payment.V68.ServiceError, :t}},
        {500, {Adyen.Payment.V68.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the 3DS authentication result

  Return the authentication result after doing a 3D Secure authentication only.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_authentication_result(
          body :: Adyen.Payment.V68.AuthenticationResultRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Payment.V68.AuthenticationResultResponse.t()}
          | {:error, Adyen.Payment.V68.ServiceError.t()}
  def post_get_authentication_result(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V68.Payments, :post_get_authentication_result},
      url: "/getAuthenticationResult",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V68.AuthenticationResultRequest, :t}}],
      response: [
        {200, {Adyen.Payment.V68.AuthenticationResultResponse, :t}},
        {400, {Adyen.Payment.V68.ServiceError, :t}},
        {401, {Adyen.Payment.V68.ServiceError, :t}},
        {403, {Adyen.Payment.V68.ServiceError, :t}},
        {422, {Adyen.Payment.V68.ServiceError, :t}},
        {500, {Adyen.Payment.V68.ServiceError, :t}}
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
          body :: Adyen.Payment.V68.ThreeDs2ResultRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Payment.V68.ThreeDs2ResultResponse.t()}
          | {:error, Adyen.Payment.V68.ServiceError.t()}
  def post_retrieve3_ds2_result(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payment.V68.Payments, :post_retrieve3_ds2_result},
      url: "/retrieve3ds2Result",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payment.V68.ThreeDs2ResultRequest, :t}}],
      response: [
        {200, {Adyen.Payment.V68.ThreeDs2ResultResponse, :t}},
        {400, {Adyen.Payment.V68.ServiceError, :t}},
        {401, {Adyen.Payment.V68.ServiceError, :t}},
        {403, {Adyen.Payment.V68.ServiceError, :t}},
        {422, {Adyen.Payment.V68.ServiceError, :t}},
        {500, {Adyen.Payment.V68.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
