defmodule Adyen.Management.TerminalSettingsTerminalLevel do
  @moduledoc """
  Provides API endpoints related to terminal settings terminal level
  """

  @default_client Adyen.Client

  @doc """
  Get the terminal logo

  Returns the logo that is configured for the payment terminal identified in the path.
  The logo is returned as a Base64-encoded string. You need to Base64-decode the string to get the actual image file.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read
  * Management API—Terminal settings read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_terminals_terminal_id_terminal_logos(terminalId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.Logo.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def get_terminals_terminal_id_terminal_logos(terminalId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [terminalId: terminalId],
      call:
        {Adyen.Management.TerminalSettingsTerminalLevel,
         :get_terminals_terminal_id_terminal_logos},
      url: "/terminals/#{terminalId}/terminalLogos",
      method: :get,
      response: [
        {200, {Adyen.Management.Logo, :t}},
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

  Returns the settings that are configured for the payment terminal identified in the path.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read
  * Management API—Terminal settings read and write

  For [sensitive terminal settings](https://docs.adyen.com/point-of-sale/automating-terminal-management/configure-terminals-api#sensitive-terminal-settings), your API credential must have the following role:
  * Management API—Terminal settings Advanced read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_terminals_terminal_id_terminal_settings(terminalId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.TerminalSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_terminals_terminal_id_terminal_settings(terminalId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [terminalId: terminalId],
      call:
        {Adyen.Management.TerminalSettingsTerminalLevel,
         :get_terminals_terminal_id_terminal_settings},
      url: "/terminals/#{terminalId}/terminalSettings",
      method: :get,
      response: [
        {200, {Adyen.Management.TerminalSettings, :t}},
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
  Update the logo

  Updates the logo for the payment terminal identified in the path.

  * To change the logo, specify the image file as a Base64-encoded string.
  * To restore the logo inherited from a higher level (store, merchant account, or company account), specify an empty logo value.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal settings read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_terminals_terminal_id_terminal_logos(
          terminalId :: String.t(),
          body :: Adyen.Management.Logo.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Logo.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def patch_terminals_terminal_id_terminal_logos(terminalId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [terminalId: terminalId, body: body],
      call:
        {Adyen.Management.TerminalSettingsTerminalLevel,
         :patch_terminals_terminal_id_terminal_logos},
      url: "/terminals/#{terminalId}/terminalLogos",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.Logo, :t}}],
      response: [
        {200, {Adyen.Management.Logo, :t}},
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

  Updates the settings that are configured for the payment terminal identified in the path.

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
  @spec patch_terminals_terminal_id_terminal_settings(
          terminalId :: String.t(),
          body :: Adyen.Management.TerminalSettings.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.TerminalSettings.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_terminals_terminal_id_terminal_settings(terminalId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [terminalId: terminalId, body: body],
      call:
        {Adyen.Management.TerminalSettingsTerminalLevel,
         :patch_terminals_terminal_id_terminal_settings},
      url: "/terminals/#{terminalId}/terminalSettings",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.TerminalSettings, :t}}],
      response: [
        {200, {Adyen.Management.TerminalSettings, :t}},
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
