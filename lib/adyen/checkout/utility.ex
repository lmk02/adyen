defmodule Adyen.Checkout.Utility do
  @moduledoc """
  Provides API endpoints related to utility
  """

  @default_client Adyen.Client

  @doc """
  Get an Apple Pay session

  You need to use this endpoint if you have an API-only integration with Apple Pay which uses Adyen's Apple Pay certificate.

  The endpoint returns the Apple Pay session data which you need to complete the [Apple Pay session validation](https://docs.adyen.com/payment-methods/apple-pay/api-only?tab=adyen-certificate-validation_1#complete-apple-pay-session-validation).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_apple_pay_sessions(
          body :: Adyen.Checkout.ApplePaySessionRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Checkout.ApplePaySessionResponse.t()} | :error
  def post_apple_pay_sessions(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.Utility, :post_apple_pay_sessions},
      url: "/applePay/sessions",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.ApplePaySessionRequest, :t}}],
      response: [{200, {Adyen.Checkout.ApplePaySessionResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Create originKey values for domains

  This operation takes the origin domains and returns a JSON object containing the corresponding origin keys for the domains. 
  > If you're still using origin key for your Web Drop-in or Components integration, we recommend [switching to client key](https://docs.adyen.com/development-resources/client-side-authentication/migrate-from-origin-key-to-client-key). This allows you to use a single key for all origins, add or remove origins without generating a new key, and detect the card type from the number entered in your payment form. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_origin_keys(body :: Adyen.Checkout.UtilityRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.UtilityResponse.t()} | {:error, Adyen.Checkout.ServiceError.t()}
  def post_origin_keys(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.Utility, :post_origin_keys},
      url: "/originKeys",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.UtilityRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.UtilityResponse, :t}},
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
  Updates the order for PayPal Express Checkout

  Updates the order for PayPal Express Checkout. This can be used to update the PayPal lightbox with an updated amount and delivery methods based on the delivery address.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_paypal_update_order(
          body :: Adyen.Checkout.PaypalUpdateOrderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.PaypalUpdateOrderResponse.t()}
          | {:error, Adyen.Checkout.ServiceError.t()}
  def post_paypal_update_order(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.Utility, :post_paypal_update_order},
      url: "/paypal/updateOrder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.PaypalUpdateOrderRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.PaypalUpdateOrderResponse, :t}},
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
  Validates shopper Id

  Validates the shopperId.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_validate_shopper_id(
          body :: Adyen.Checkout.ValidateShopperIdRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.ValidateShopperIdResponse.t()}
          | {:error, Adyen.Checkout.DefaultErrorResponseEntity.t()}
  def post_validate_shopper_id(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.Utility, :post_validate_shopper_id},
      url: "/validateShopperId",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.ValidateShopperIdRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.ValidateShopperIdResponse, :t}},
        {400, {Adyen.Checkout.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Checkout.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Checkout.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Checkout.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Checkout.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
