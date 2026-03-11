defmodule Adyen.Management.PayoutSettingsMerchantLevel do
  @moduledoc """
  Provides API endpoints related to payout settings merchant level
  """

  @default_client Adyen.Client

  @doc """
  Delete a payout setting

  Deletes the payout setting identified in the path.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * Management API—Payout account settings read and write
  """
  @spec delete_merchants_merchant_id_payout_settings_payout_settings_id(
          merchantId :: String.t(),
          payoutSettingsId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Management.RestServiceError.t()}
  def delete_merchants_merchant_id_payout_settings_payout_settings_id(
        merchantId,
        payoutSettingsId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, payoutSettingsId: payoutSettingsId],
      call:
        {Adyen.Management.PayoutSettingsMerchantLevel,
         :delete_merchants_merchant_id_payout_settings_payout_settings_id},
      url: "/merchants/#{merchantId}/payoutSettings/#{payoutSettingsId}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of payout settings

  Returns the list of payout settings for the merchant account identified in the path.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payout account settings read
  """
  @spec get_merchants_merchant_id_payout_settings(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.PayoutSettingsResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_payout_settings(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.PayoutSettingsMerchantLevel, :get_merchants_merchant_id_payout_settings},
      url: "/merchants/#{merchantId}/payoutSettings",
      method: :get,
      response: [
        {200, {Adyen.Management.PayoutSettingsResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a payout setting

  Returns the payout setting identified in the path.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payout account settings read
  """
  @spec get_merchants_merchant_id_payout_settings_payout_settings_id(
          merchantId :: String.t(),
          payoutSettingsId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PayoutSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_payout_settings_payout_settings_id(
        merchantId,
        payoutSettingsId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, payoutSettingsId: payoutSettingsId],
      call:
        {Adyen.Management.PayoutSettingsMerchantLevel,
         :get_merchants_merchant_id_payout_settings_payout_settings_id},
      url: "/merchants/#{merchantId}/payoutSettings/#{payoutSettingsId}",
      method: :get,
      response: [
        {200, {Adyen.Management.PayoutSettings, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a payout setting

  Updates the payout setting identified in the path. You can enable or disable the payout setting.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * Management API—Payout account settings read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_payout_settings_payout_settings_id(
          merchantId :: String.t(),
          payoutSettingsId :: String.t(),
          body :: Adyen.Management.UpdatePayoutSettingsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PayoutSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_payout_settings_payout_settings_id(
        merchantId,
        payoutSettingsId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, payoutSettingsId: payoutSettingsId, body: body],
      call:
        {Adyen.Management.PayoutSettingsMerchantLevel,
         :patch_merchants_merchant_id_payout_settings_payout_settings_id},
      url: "/merchants/#{merchantId}/payoutSettings/#{payoutSettingsId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdatePayoutSettingsRequest, :t}}],
      response: [
        {200, {Adyen.Management.PayoutSettings, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Add a payout setting

  Sends a request to add a payout setting for the merchant account specified in the path. A payout setting links the merchant account to the [transfer instrument](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/transferInstruments) that contains the details of the payout bank account. Adyen verifies the bank account before allowing and enabling the payout setting.

  If you're accepting payments in multiple currencies, you may add multiple payout settings for the merchant account.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * Management API—Payout account settings read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_payout_settings(
          merchantId :: String.t(),
          body :: Adyen.Management.PayoutSettingsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PayoutSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_payout_settings(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.PayoutSettingsMerchantLevel,
         :post_merchants_merchant_id_payout_settings},
      url: "/merchants/#{merchantId}/payoutSettings",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.PayoutSettingsRequest, :t}}],
      response: [
        {200, {Adyen.Management.PayoutSettings, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
