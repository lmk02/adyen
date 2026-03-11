defmodule Adyen.Checkout.V69.Payments do
  @moduledoc """
  Provides API endpoints related to payments
  """

  @default_client Adyen.Client

  @doc """
  Get the result of a payment session

  Returns the status of the payment session with the `sessionId` and `sessionResult` specified in the path.

  ## Options

    * `sessionResult`: The `sessionResult` value from the Drop-in or Component.

  """
  @spec get_sessions_session_id(sessionId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V69.SessionResultResponse.t()} | :error
  def get_sessions_session_id(sessionId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:sessionResult])

    client.request(%{
      args: [sessionId: sessionId],
      call: {Adyen.Checkout.V69.Payments, :get_sessions_session_id},
      url: "/sessions/#{sessionId}",
      method: :get,
      query: query,
      response: [{200, {Adyen.Checkout.V69.SessionResultResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get the brands and other details of a card

  Use this endpoint to get information about the card or network token that enables you to decide on the routing of the transaction and the eligibility of the card for the type of transaction.

  If you include [your supported brands](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/cardDetails__reqParam_supportedBrands) in the request, the response also tells you if you support each [brand that was identified on the card](https://docs.adyen.com/api-explorer/Checkout/latest/post/cardDetails#responses-200-brands).

  If you have an API-only integration and collect card data, use this endpoint to find out if the shopper's card is co-bad. For co-badged cards, you must let the shopper choose the brand to pay with  if you support both brands.

  ## Server-side API libraries
  We provide open-source [server-side API libraries](https://docs.adyen.com/development-resources/libraries/) in several languages: 
  - PHP
  - Java
  - Node.js
  - .NET
  - Go
  - Python
  - Ruby
  - Apex (beta)

  See our [integration examples](https://github.com/adyen-examples#%EF%B8%8F-official-integration-examples) for example uses of the libraries.

  ## Developer resources
  BIN Lookup API is available through a Postman collection. Click the button below to create a fork, then set the environment variables at **Environments**&nbsp;>&nbsp;**Adyen&nbsp;APIs**. 

  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/25716737-677c7679-a695-4ebb-91da-68b4e7c9228a?action=collection%2Ffork&source=rip_markdown&collection-url=entityId%3D25716737-677c7679-a695-4ebb-91da-68b4e7c9228a%26entityType%3Dcollection%26workspaceId%3Da8d63f9f-cfc7-4810-90c5-9e0c60030d3e#?env%5BAdyen%20APIs%5D=W3sia2V5IjoiWC1BUEktS2V5IiwidmFsdWUiOiIiLCJlbmFibGVkIjp0cnVlLCJ0eXBlIjoic2VjcmV0In0seyJrZXkiOiJZT1VSX01FUkNIQU5UX0FDQ09VTlQiLCJ2YWx1ZSI6IiIsImVuYWJsZWQiOnRydWUsInR5cGUiOiJkZWZhdWx0In0seyJrZXkiOiJZT1VSX0NPTVBBTllfQUNDT1VOVCIsInZhbHVlIjoiIiwiZW5hYmxlZCI6dHJ1ZSwidHlwZSI6ImRlZmF1bHQifSx7ImtleSI6IllPVVJfQkFMQU5DRV9QTEFURk9STSIsInZhbHVlIjoiIiwiZW5hYmxlZCI6dHJ1ZSwidHlwZSI6ImRlZmF1bHQifV0=)



  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_card_details(body :: Adyen.Checkout.V69.CardDetailsRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V69.CardDetailsResponse.t()} | :error
  def post_card_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V69.Payments, :post_card_details},
      url: "/cardDetails",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V69.CardDetailsRequest, :t}}],
      response: [{200, {Adyen.Checkout.V69.CardDetailsResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get a list of available payment methods

  Retrieves the list of available payment methods for the transaction, based on the transaction information like amount, country, and currency.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payment_methods(
          body :: Adyen.Checkout.V69.PaymentMethodsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V69.PaymentMethodsResponse.t()}
          | {:error, Adyen.Checkout.V69.ServiceError.t()}
  def post_payment_methods(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V69.Payments, :post_payment_methods},
      url: "/paymentMethods",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V69.PaymentMethodsRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V69.PaymentMethodsResponse, :t}},
        {400, {Adyen.Checkout.V69.ServiceError, :t}},
        {401, {Adyen.Checkout.V69.ServiceError, :t}},
        {403, {Adyen.Checkout.V69.ServiceError, :t}},
        {422, {Adyen.Checkout.V69.ServiceError, :t}},
        {500, {Adyen.Checkout.V69.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Start a transaction

  Sends payment parameters (like amount, country, and currency) together with other required input details collected from the shopper. To know more about required parameters for specific payment methods, refer to our [payment method guides](https://docs.adyen.com/payment-methods). 
  The response depends on the [payment flow](https://docs.adyen.com/payment-methods#payment-flow):
  * For a direct flow, the response includes a `pspReference` and a `resultCode` with the payment result, for example **Authorised** or **Refused**. 
  * For a redirect or additional action, the response contains an `action` object. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments(body :: Adyen.Checkout.V69.PaymentRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V69.PaymentResponse.t()}
          | {:error, Adyen.Checkout.V69.ServiceError.t()}
  def post_payments(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V69.Payments, :post_payments},
      url: "/payments",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V69.PaymentRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V69.PaymentResponse, :t}},
        {400, {Adyen.Checkout.V69.ServiceError, :t}},
        {401, {Adyen.Checkout.V69.ServiceError, :t}},
        {403, {Adyen.Checkout.V69.ServiceError, :t}},
        {422, {Adyen.Checkout.V69.ServiceError, :t}},
        {500, {Adyen.Checkout.V69.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Submit details for a payment

  Submits details for a payment created using `/payments`. This step is only needed when no final state has been reached on the `/payments` request, for example when the shopper was redirected to another page to complete the payment.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_details(
          body :: Adyen.Checkout.V69.PaymentDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V69.PaymentDetailsResponse.t()}
          | {:error, Adyen.Checkout.V69.ServiceError.t()}
  def post_payments_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V69.Payments, :post_payments_details},
      url: "/payments/details",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V69.PaymentDetailsRequest, :t}}],
      response: [
        {200, {Adyen.Checkout.V69.PaymentDetailsResponse, :t}},
        {400, {Adyen.Checkout.V69.ServiceError, :t}},
        {401, {Adyen.Checkout.V69.ServiceError, :t}},
        {403, {Adyen.Checkout.V69.ServiceError, :t}},
        {422, {Adyen.Checkout.V69.ServiceError, :t}},
        {500, {Adyen.Checkout.V69.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a payment session

  Creates a payment session for [Drop-in](https://docs.adyen.com/online-payments/build-your-integration/sessions-flow/?platform=Web&integration=Drop-in), [Components](https://docs.adyen.com/online-payments/build-your-integration/sessions-flow/?platform=Web&integration=Components), and [Hosted Checkout](https://docs.adyen.com/online-payments/build-your-integration/sessions-flow/?platform=Web&integration=Hosted+Checkout) integrations.

  The response contains encrypted payment session data. The front end then uses the session data to make any required server-side calls for the payment flow.

  You get the payment outcome asynchronously, in an [AUTHORISATION](https://docs.adyen.com/api-explorer/#/Webhooks/latest/post/AUTHORISATION) webhook.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_sessions(
          body :: Adyen.Checkout.V69.CreateCheckoutSessionRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Checkout.V69.CreateCheckoutSessionResponse.t()} | :error
  def post_sessions(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V69.Payments, :post_sessions},
      url: "/sessions",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V69.CreateCheckoutSessionRequest, :t}}],
      response: [{201, {Adyen.Checkout.V69.CreateCheckoutSessionResponse, :t}}],
      opts: opts
    })
  end
end
