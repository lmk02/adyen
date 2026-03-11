defmodule Adyen.Management.V1.WebhooksMerchantLevel do
  @moduledoc """
  Provides API endpoints related to webhooks merchant level
  """

  @default_client Adyen.Client

  @doc """
  Remove a webhook

  Remove the configuration for the webhook identified in the path.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write
  """
  @spec delete_merchants_merchant_id_webhooks_webhook_id(
          merchantId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Management.V1.RestServiceError.t()}
  def delete_merchants_merchant_id_webhooks_webhook_id(merchantId, webhookId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, webhookId: webhookId],
      call:
        {Adyen.Management.V1.WebhooksMerchantLevel,
         :delete_merchants_merchant_id_webhooks_webhook_id},
      url: "/merchants/#{merchantId}/webhooks/#{webhookId}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List all webhooks

  Lists all webhook configurations for the merchant account.

  > This call does not return webhook configurations for the company account to which the specified merchant account belongs. You can see these in your Customer Area under **Developers** > **Webhooks**.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read
  * Management API—Webhooks read and write

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_merchants_merchant_id_webhooks(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V1.ListWebhooksResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_merchants_merchant_id_webhooks(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [merchantId: merchantId],
      call: {Adyen.Management.V1.WebhooksMerchantLevel, :get_merchants_merchant_id_webhooks},
      url: "/merchants/#{merchantId}/webhooks",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V1.ListWebhooksResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a webhook

  Returns the configuration for the webhook identified in the path.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read
  * Management API—Webhooks read and write
  """
  @spec get_merchants_merchant_id_webhooks_webhook_id(
          merchantId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.Webhook.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_merchants_merchant_id_webhooks_webhook_id(merchantId, webhookId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, webhookId: webhookId],
      call:
        {Adyen.Management.V1.WebhooksMerchantLevel,
         :get_merchants_merchant_id_webhooks_webhook_id},
      url: "/merchants/#{merchantId}/webhooks/#{webhookId}",
      method: :get,
      response: [
        {200, {Adyen.Management.V1.Webhook, :t}},
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a webhook

  Make changes to the configuration of the webhook identified in the path. The request contains the new values you want to have in the webhook configuration. The response contains the full configuration for the webhook, which includes the new values from the request.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_webhooks_webhook_id(
          merchantId :: String.t(),
          webhookId :: String.t(),
          body :: Adyen.Management.V1.UpdateMerchantWebhookRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.Webhook.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def patch_merchants_merchant_id_webhooks_webhook_id(merchantId, webhookId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, webhookId: webhookId, body: body],
      call:
        {Adyen.Management.V1.WebhooksMerchantLevel,
         :patch_merchants_merchant_id_webhooks_webhook_id},
      url: "/merchants/#{merchantId}/webhooks/#{webhookId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.V1.UpdateMerchantWebhookRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.Webhook, :t}},
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Set up a webhook

  Subscribe to receive webhook notifications about events related to your merchant account. You can add basic authentication to make sure the data is secure.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_webhooks(
          merchantId :: String.t(),
          body :: Adyen.Management.V1.CreateMerchantWebhookRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.Webhook.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_merchants_merchant_id_webhooks(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call: {Adyen.Management.V1.WebhooksMerchantLevel, :post_merchants_merchant_id_webhooks},
      url: "/merchants/#{merchantId}/webhooks",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V1.CreateMerchantWebhookRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.Webhook, :t}},
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Generate an HMAC key

  Returns an [HMAC key](https://en.wikipedia.org/wiki/HMAC) for the webhook identified in the path. This key allows you to check the integrity and the origin of the notifications you receive.By creating an HMAC key, you start receiving [HMAC-signed notifications](https://docs.adyen.com/development-resources/webhooks/verify-hmac-signatures#enable-hmac-signatures) from Adyen. Find out more about how to [verify HMAC signatures](https://docs.adyen.com/development-resources/webhooks/verify-hmac-signatures).

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write
  """
  @spec post_merchants_merchant_id_webhooks_webhook_id_generate_hmac(
          merchantId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.GenerateHmacKeyResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_merchants_merchant_id_webhooks_webhook_id_generate_hmac(
        merchantId,
        webhookId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, webhookId: webhookId],
      call:
        {Adyen.Management.V1.WebhooksMerchantLevel,
         :post_merchants_merchant_id_webhooks_webhook_id_generate_hmac},
      url: "/merchants/#{merchantId}/webhooks/#{webhookId}/generateHmac",
      method: :post,
      response: [
        {200, {Adyen.Management.V1.GenerateHmacKeyResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Test a webhook

  Sends sample notifications to test if the webhook is set up correctly.

  We send four test notifications for each event code you choose. They cover success and failure scenarios for the hard-coded currencies EUR and GBP, regardless of the currencies configured in the merchant accounts. For custom notifications, we only send the specified custom notification.

  The response describes the result of the test. The `status` field tells you if the test was successful or not. You can use the other fields to troubleshoot unsuccessful tests.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_webhooks_webhook_id_test(
          merchantId :: String.t(),
          webhookId :: String.t(),
          body :: Adyen.Management.V1.TestWebhookRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.TestWebhookResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_merchants_merchant_id_webhooks_webhook_id_test(merchantId, webhookId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, webhookId: webhookId, body: body],
      call:
        {Adyen.Management.V1.WebhooksMerchantLevel,
         :post_merchants_merchant_id_webhooks_webhook_id_test},
      url: "/merchants/#{merchantId}/webhooks/#{webhookId}/test",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V1.TestWebhookRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.TestWebhookResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
