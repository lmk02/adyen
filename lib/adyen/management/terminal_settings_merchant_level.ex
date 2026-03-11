defmodule Adyen.Management.TerminalSettingsMerchantLevel do
  @moduledoc """
  Provides API endpoints related to terminal settings merchant level
  """

  @default_client Adyen.Client

  @doc """
  Get the terminal logo

  Returns the logo that is configured for a specific payment terminal model at the merchant account identified in the path. 
  The logo is returned as a Base64-encoded string. You need to Base64-decode the string to get the actual image file. 
  This logo applies to all terminals of the specified model under the merchant account, unless a different logo is configured at a lower level (store or individual terminal).

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read
  * Management API—Terminal settings read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `model`: The terminal model. Possible values: E355, VX675WIFIBT, VX680, VX690, VX700, VX820, M400, MX925, P400Plus, UX300, UX410, V200cPlus, V240mPlus, V400cPlus, V400m, e280, e285, e285p, S1E, S1EL, S1F2, S1L, S1U, S7T.

  """
  @spec get_merchants_merchant_id_terminal_logos(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.Logo.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_terminal_logos(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:model])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalSettingsMerchantLevel,
         :get_merchants_merchant_id_terminal_logos},
      url: "/merchants/#{merchantId}/terminalLogos",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.Logo, :t}},
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
  Get terminal settings

  Returns the payment terminal settings that are configured for the merchant account identified in the path. These settings apply to all terminals under the merchant account unless different values are configured at a lower level (store or individual terminal).

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read
  * Management API—Terminal settings read and write

  For [sensitive terminal settings](https://docs.adyen.com/point-of-sale/automating-terminal-management/configure-terminals-api#sensitive-terminal-settings), your API credential must have the following role:
  * Management API—Terminal settings Advanced read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_merchants_merchant_id_terminal_settings(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.TerminalSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_terminal_settings(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalSettingsMerchantLevel,
         :get_merchants_merchant_id_terminal_settings},
      url: "/merchants/#{merchantId}/terminalSettings",
      method: :get,
      response: [
        {200, {Adyen.Management.TerminalSettings, :t}},
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
  Update the terminal logo

  Updates the logo for a specific payment terminal model at the merchant account identified in the path. You can update the logo for only one terminal model at a time. 
  This logo applies to all terminals of the specified model under the merchant account, unless a different logo is configured at a lower level (store or individual terminal).

  * To change the logo, specify the image file as a Base64-encoded string.
  * To restore the logo inherited from the company account, specify an empty logo value.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `model`: The terminal model. Allowed values: E355, VX675WIFIBT, VX680, VX690, VX700, VX820, M400, MX925, P400Plus, UX300, UX410, V200cPlus, V240mPlus, V400cPlus, V400m, e280, e285, e285p, S1E, S1EL, S1F2, S1L, S1U, S7T.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_terminal_logos(
          merchantId :: String.t(),
          body :: Adyen.Management.Logo.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Logo.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_terminal_logos(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:model])

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.TerminalSettingsMerchantLevel,
         :patch_merchants_merchant_id_terminal_logos},
      url: "/merchants/#{merchantId}/terminalLogos",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", {Adyen.Management.Logo, :t}}],
      response: [
        {200, {Adyen.Management.Logo, :t}},
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
  Update terminal settings

  Updates payment terminal settings for the merchant account identified in the path.
  These settings apply to all terminals under the merchant account, unless different values are configured at a lower level (store or individual terminal).

  * To change a parameter value, include the full object that contains the parameter, even if you don't want to change all parameters in the object.
  * To restore a parameter value inherited from a higher level, include the full object that contains the parameter, and specify an empty value for the parameter or omit the parameter.
  * Objects that are not included in the request are not updated.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read and write


  For [sensitive terminal settings](https://docs.adyen.com/point-of-sale/automating-terminal-management/configure-terminals-api#sensitive-terminal-settings), your API credential must have the following role:
  * Management API—Terminal settings Advanced read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_terminal_settings(
          merchantId :: String.t(),
          body :: Adyen.Management.TerminalSettings.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.TerminalSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_terminal_settings(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.TerminalSettingsMerchantLevel,
         :patch_merchants_merchant_id_terminal_settings},
      url: "/merchants/#{merchantId}/terminalSettings",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.TerminalSettings, :t}}],
      response: [
        {200, {Adyen.Management.TerminalSettings, :t}},
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
