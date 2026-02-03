defmodule Adyen.BalancePlatform.Balances do
  @moduledoc """
  Provides API endpoints related to balances
  """

  alias Adyen.BalancePlatform.Balances
  alias Adyen.BalancePlatform.BalanceWebhookSettingInfo
  alias Adyen.BalancePlatform.BalanceWebhookSettingInfoUpdate
  alias Adyen.BalancePlatform.DefaultErrorResponseEntity
  alias Adyen.BalancePlatform.WebhookSetting
  alias Adyen.BalancePlatform.WebhookSettings

  @default_client Adyen.Client

  @doc """
  Delete a balance webhook setting by id

  Deletes a balance webhook setting that contains the conditions for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).
  """
  @spec delete_balance_platforms_balance_platform_id_webhook_id_setting(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          settingId :: String.t(),
          opts :: keyword
        ) :: {:ok, any} | {:error, DefaultErrorResponseEntity.t()}
  def delete_balance_platforms_balance_platform_id_webhook_id_setting(balancePlatformId, webhookId, settingId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId, settingId: settingId],
      call: {Balances, :delete_balance_platforms_balance_platform_id_webhook_id_setting},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings/#{settingId}",
      method: :delete,
      response: [
        {204, :unknown},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all balance webhook settings

  Returns all balance webhook settings configured for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).
  """
  @spec get_balance_platforms_balance_platform_id_webhook_id_settings(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, WebhookSettings.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def get_balance_platforms_balance_platform_id_webhook_id_settings(balancePlatformId, webhookId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId],
      call: {Balances, :get_balance_platforms_balance_platform_id_webhook_id_settings},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings",
      method: :get,
      response: [
        {200, {WebhookSettings, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a balance webhook setting by id

  Returns the details of a specific balance webhook setting configured for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).
  """
  @spec get_balance_platforms_balance_platform_id_webhook_id_setting(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          settingId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, WebhookSetting.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def get_balance_platforms_balance_platform_id_webhook_id_setting(balancePlatformId, webhookId, settingId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId, settingId: settingId],
      call: {Balances, :get_balance_platforms_balance_platform_id_webhook_id_setting},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings/#{settingId}",
      method: :get,
      response: [
        {200, {WebhookSetting, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a balance webhook setting by id

  Updates the conditions the balance change needs to meet for Adyen to send a [balance webhook](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_balance_platforms_balance_platform_id_webhook_id_setting(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          settingId :: String.t(),
          body :: BalanceWebhookSettingInfoUpdate.t(),
          opts :: keyword
        ) ::
          {:ok, WebhookSetting.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def update_balance_platforms_balance_platform_id_webhook_id_setting(
        balancePlatformId,
        webhookId,
        settingId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [
        balancePlatformId: balancePlatformId,
        webhookId: webhookId,
        settingId: settingId,
        body: body
      ],
      call: {Balances, :update_balance_platforms_balance_platform_id_webhook_id_setting},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings/#{settingId}",
      body: body,
      method: :patch,
      request: [{"application/json", {BalanceWebhookSettingInfoUpdate, :t}}],
      response: [
        {200, {WebhookSetting, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a balance webhook setting

  Configures the criteria for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/1/post/balancePlatform.balanceAccount.balance.updated).

  Adyen sends balance webhooks to notify you of balance changes in your balance platform. They can be triggered when the balance reaches, exceeds, or drops below a specific value in a specific currency.

  You can get notified about balance changes in your entire balance platform, in the balance accounts of a specific user, or a specific balance account. The hierarchy between the webhook settings are based on the following business logic:

  * Settings on a higher level apply to all lower level resources (balance platform > account holder > balance acocunt).

  * The most granular setting overrides higher level settings (balance account > account holder > balance platform).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_balance_platforms_balance_platform_id_webhook_id_settings(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          body :: BalanceWebhookSettingInfo.t(),
          opts :: keyword
        ) ::
          {:ok, WebhookSetting.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def create_balance_platforms_balance_platform_id_webhook_id_settings(balancePlatformId, webhookId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId, body: body],
      call: {Balances, :create_balance_platforms_balance_platform_id_webhook_id_settings},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings",
      body: body,
      method: :post,
      request: [{"application/json", {BalanceWebhookSettingInfo, :t}}],
      response: [
        {200, {WebhookSetting, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
