defmodule Adyen.Management.V3.WebhooksCompanyLevel do
  @moduledoc """
  Provides API endpoints related to webhooks company level
  """

  @default_client Adyen.Client

  @doc """
  Remove a webhook

  Remove the configuration for the webhook identified in the path.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write
  """
  @spec delete_companies_company_id_webhooks_webhook_id(
          companyId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Management.V3.RestServiceError.t()}
  def delete_companies_company_id_webhooks_webhook_id(companyId, webhookId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, webhookId: webhookId],
      call:
        {Adyen.Management.V3.WebhooksCompanyLevel,
         :delete_companies_company_id_webhooks_webhook_id},
      url: "/companies/#{companyId}/webhooks/#{webhookId}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List all webhooks

  Lists all webhook configurations for the company account.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read
  * Management API—Webhooks read and write

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_companies_company_id_webhooks(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.ListWebhooksResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_companies_company_id_webhooks(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [companyId: companyId],
      call: {Adyen.Management.V3.WebhooksCompanyLevel, :get_companies_company_id_webhooks},
      url: "/companies/#{companyId}/webhooks",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V3.ListWebhooksResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
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
  @spec get_companies_company_id_webhooks_webhook_id(
          companyId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.Webhook.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_companies_company_id_webhooks_webhook_id(companyId, webhookId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, webhookId: webhookId],
      call:
        {Adyen.Management.V3.WebhooksCompanyLevel, :get_companies_company_id_webhooks_webhook_id},
      url: "/companies/#{companyId}/webhooks/#{webhookId}",
      method: :get,
      response: [
        {200, {Adyen.Management.V3.Webhook, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
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
  @spec patch_companies_company_id_webhooks_webhook_id(
          companyId :: String.t(),
          webhookId :: String.t(),
          body :: Adyen.Management.V3.UpdateCompanyWebhookRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.Webhook.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def patch_companies_company_id_webhooks_webhook_id(companyId, webhookId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, webhookId: webhookId, body: body],
      call:
        {Adyen.Management.V3.WebhooksCompanyLevel,
         :patch_companies_company_id_webhooks_webhook_id},
      url: "/companies/#{companyId}/webhooks/#{webhookId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.V3.UpdateCompanyWebhookRequest, :t}}],
      response: [
        {200, {Adyen.Management.V3.Webhook, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Set up a webhook

  Subscribe to receive webhook notifications about events related to your company account. You can add basic authentication to make sure the data is secure.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_companies_company_id_webhooks(
          companyId :: String.t(),
          body :: Adyen.Management.V3.CreateCompanyWebhookRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.Webhook.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_companies_company_id_webhooks(companyId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, body: body],
      call: {Adyen.Management.V3.WebhooksCompanyLevel, :post_companies_company_id_webhooks},
      url: "/companies/#{companyId}/webhooks",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V3.CreateCompanyWebhookRequest, :t}}],
      response: [
        {200, {Adyen.Management.V3.Webhook, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
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
  @spec post_companies_company_id_webhooks_webhook_id_generate_hmac(
          companyId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.GenerateHmacKeyResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_companies_company_id_webhooks_webhook_id_generate_hmac(
        companyId,
        webhookId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, webhookId: webhookId],
      call:
        {Adyen.Management.V3.WebhooksCompanyLevel,
         :post_companies_company_id_webhooks_webhook_id_generate_hmac},
      url: "/companies/#{companyId}/webhooks/#{webhookId}/generateHmac",
      method: :post,
      response: [
        {200, {Adyen.Management.V3.GenerateHmacKeyResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Test a webhook

  Sends sample notifications to test if the webhook is set up correctly.

  We send sample notifications for maximum 20 of the merchant accounts that the webhook is configured for. If the webhook is configured for more than 20 merchant accounts, use the `merchantIds` array to specify a subset of the merchant accounts for which to send test notifications.

  We send four test notifications for each event code you choose. They cover success and failure scenarios for the hard-coded currencies EUR and GBP, regardless of the currencies configured in the merchant accounts. For custom notifications, we only send the specified custom notification.

  The response describes the result of the test. The `status` field tells you if the test was successful or not. You can use the other response fields to troubleshoot unsuccessful tests.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Webhooks read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_companies_company_id_webhooks_webhook_id_test(
          companyId :: String.t(),
          webhookId :: String.t(),
          body :: Adyen.Management.V3.TestCompanyWebhookRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.TestWebhookResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_companies_company_id_webhooks_webhook_id_test(companyId, webhookId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, webhookId: webhookId, body: body],
      call:
        {Adyen.Management.V3.WebhooksCompanyLevel,
         :post_companies_company_id_webhooks_webhook_id_test},
      url: "/companies/#{companyId}/webhooks/#{webhookId}/test",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V3.TestCompanyWebhookRequest, :t}}],
      response: [
        {200, {Adyen.Management.V3.TestWebhookResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
