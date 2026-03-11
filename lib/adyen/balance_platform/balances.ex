defmodule Adyen.BalancePlatform.Balances do
  @moduledoc """
  Provides API endpoints related to balances
  """

  @default_client Adyen.Client

  @doc """
  Delete a balance webhook setting by id

  Deletes a balance webhook setting that contains the conditions for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).
  """
  @spec delete_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          settingId :: String.t(),
          opts :: keyword
        ) :: {:ok, any} | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def delete_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id(
        balancePlatformId,
        webhookId,
        settingId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId, settingId: settingId],
      call:
        {Adyen.BalancePlatform.Balances,
         :delete_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings/#{settingId}",
      method: :delete,
      response: [
        {204, :unknown},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all balance webhook settings

  Returns all balance webhook settings configured for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).
  """
  @spec get_balance_platforms_balance_platform_id_webhooks_webhook_id_settings(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.WebhookSettings.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def get_balance_platforms_balance_platform_id_webhooks_webhook_id_settings(
        balancePlatformId,
        webhookId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId],
      call:
        {Adyen.BalancePlatform.Balances,
         :get_balance_platforms_balance_platform_id_webhooks_webhook_id_settings},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.WebhookSettings, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a balance webhook setting by id

  Returns the details of a specific balance webhook setting configured for triggering [balance webhooks](https://docs.adyen.com/api-explorer/balance-webhooks/latest/post/balanceAccount.balance.updated).
  """
  @spec get_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          settingId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.WebhookSetting.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def get_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id(
        balancePlatformId,
        webhookId,
        settingId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId, settingId: settingId],
      call:
        {Adyen.BalancePlatform.Balances,
         :get_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings/#{settingId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.WebhookSetting, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
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
  @spec patch_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          settingId :: String.t(),
          body :: Adyen.BalancePlatform.BalanceWebhookSettingInfoUpdate.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.WebhookSetting.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def patch_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id(
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
      call:
        {Adyen.BalancePlatform.Balances,
         :patch_balance_platforms_balance_platform_id_webhooks_webhook_id_settings_setting_id},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings/#{settingId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.BalanceWebhookSettingInfoUpdate, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.WebhookSetting, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
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
  @spec post_balance_platforms_balance_platform_id_webhooks_webhook_id_settings(
          balancePlatformId :: String.t(),
          webhookId :: String.t(),
          body :: Adyen.BalancePlatform.BalanceWebhookSettingInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.WebhookSetting.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def post_balance_platforms_balance_platform_id_webhooks_webhook_id_settings(
        balancePlatformId,
        webhookId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, webhookId: webhookId, body: body],
      call:
        {Adyen.BalancePlatform.Balances,
         :post_balance_platforms_balance_platform_id_webhooks_webhook_id_settings},
      url: "/balancePlatforms/#{balancePlatformId}/webhooks/#{webhookId}/settings",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.BalanceWebhookSettingInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.WebhookSetting, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
