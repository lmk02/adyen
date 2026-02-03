defmodule Adyen.Checkout.Utility do
  @moduledoc """
  Provides API endpoints related to utility
  """

  alias Adyen.Checkout.ApplePaySessionRequest
  alias Adyen.Checkout.ApplePaySessionResponse
  alias Adyen.Checkout.DefaultErrorResponseEntity
  alias Adyen.Checkout.PaypalUpdateOrderRequest
  alias Adyen.Checkout.PaypalUpdateOrderResponse
  alias Adyen.Checkout.ServiceError
  alias Adyen.Checkout.Utility
  alias Adyen.Checkout.UtilityRequest
  alias Adyen.Checkout.UtilityResponse
  alias Adyen.Checkout.ValidateShopperIdRequest
  alias Adyen.Checkout.ValidateShopperIdResponse

  @default_client Adyen.Client

  @doc """
  Get an Apple Pay session

  You need to use this endpoint if you have an API-only integration with Apple Pay which uses Adyen's Apple Pay certificate.

  The endpoint returns the Apple Pay session data which you need to complete the [Apple Pay session validation](https://docs.adyen.com/payment-methods/apple-pay/api-only?tab=adyen-certificate-validation_1#complete-apple-pay-session-validation).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_apple_pay_session(
          body :: ApplePaySessionRequest.t(),
          opts :: keyword
        ) :: {:ok, ApplePaySessionResponse.t()} | :error
  def create_apple_pay_session(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Utility, :create_apple_pay_session},
      url: "/applePay/sessions",
      body: body,
      method: :post,
      request: [{"application/json", {ApplePaySessionRequest, :t}}],
      response: [{200, {ApplePaySessionResponse, :t}}],
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
  @spec create_origin_keys(body :: UtilityRequest.t(), opts :: keyword) ::
          {:ok, UtilityResponse.t()} | {:error, ServiceError.t()}
  def create_origin_keys(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Utility, :create_origin_keys},
      url: "/originKeys",
      body: body,
      method: :post,
      request: [{"application/json", {UtilityRequest, :t}}],
      response: [
        {200, {UtilityResponse, :t}},
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
  Updates the order for PayPal Express Checkout

  Updates the order for PayPal Express Checkout. This can be used to update the PayPal lightbox with an updated amount and delivery methods based on the delivery address.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_paypal_update_order(
          body :: PaypalUpdateOrderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, PaypalUpdateOrderResponse.t()}
          | {:error, ServiceError.t()}
  def create_paypal_update_order(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Utility, :create_paypal_update_order},
      url: "/paypal/updateOrder",
      body: body,
      method: :post,
      request: [{"application/json", {PaypalUpdateOrderRequest, :t}}],
      response: [
        {200, {PaypalUpdateOrderResponse, :t}},
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
  Validates shopper Id

  Validates the shopperId.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_validate_shopper(
          body :: ValidateShopperIdRequest.t(),
          opts :: keyword
        ) ::
          {:ok, ValidateShopperIdResponse.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def create_validate_shopper(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Utility, :create_validate_shopper},
      url: "/validateShopperId",
      body: body,
      method: :post,
      request: [{"application/json", {ValidateShopperIdRequest, :t}}],
      response: [
        {200, {ValidateShopperIdResponse, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
