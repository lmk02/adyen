defmodule Adyen.Management.V1.TerminalActionsCompanyLevel do
  @moduledoc """
  Provides API endpoints related to terminal actions company level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of terminal actions

  Returns the [terminal actions](https://docs.adyen.com/point-of-sale/automating-terminal-management/terminal-actions-api) that have been scheduled for the company identified in the path.The response doesn't include actions that are scheduled by Adyen.
  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal actions read
  * Management API—Terminal actions read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 20 items on a page.
    * `status`: Returns terminal actions with the specified status. 
      Allowed values: **pending**, **successful**, **failed**, **cancelled**, **tryLater**.
    * `type`: Returns terminal actions of the specified type. 
      Allowed values: **InstallAndroidApp**, **UninstallAndroidApp**, **InstallAndroidCertificate**, **UninstallAndroidCertificate**.

  """
  @spec get_companies_company_id_terminal_actions(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V1.ListExternalTerminalActionsResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_companies_company_id_terminal_actions(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :status, :type])

    client.request(%{
      args: [companyId: companyId],
      call:
        {Adyen.Management.V1.TerminalActionsCompanyLevel,
         :get_companies_company_id_terminal_actions},
      url: "/companies/#{companyId}/terminalActions",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V1.ListExternalTerminalActionsResponse, :t}},
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
  Get terminal action

  Returns the details of the [terminal action](https://docs.adyen.com/point-of-sale/automating-terminal-management/terminal-actions-api) identified in the path.
  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal actions read
  * Management API—Terminal actions read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_companies_company_id_terminal_actions_action_id(
          companyId :: String.t(),
          actionId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.ExternalTerminalAction.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_companies_company_id_terminal_actions_action_id(companyId, actionId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, actionId: actionId],
      call:
        {Adyen.Management.V1.TerminalActionsCompanyLevel,
         :get_companies_company_id_terminal_actions_action_id},
      url: "/companies/#{companyId}/terminalActions/#{actionId}",
      method: :get,
      response: [
        {200, {Adyen.Management.V1.ExternalTerminalAction, :t}},
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
