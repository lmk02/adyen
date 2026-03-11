defmodule Adyen.Management.V1.TerminalActionsTerminalLevel do
  @moduledoc """
  Provides API endpoint related to terminal actions terminal level
  """

  @default_client Adyen.Client

  @doc """
  Create a terminal action

  Schedules a [terminal action](https://docs.adyen.com/point-of-sale/automating-terminal-management/terminal-actions-api) by specifying the action and the terminals that the action must be applied to. 

  The following restrictions apply:
  * You can schedule only one action at a time. For example, to install a new app version and remove an old app version, you have to make two API requests. 
  * The maximum number of terminals in a request is **100**. For example, to apply an action to 250 terminals, you have to divide the terminals over three API requests. 
  * If there is an error with one or more terminal IDs in the request, the action is scheduled for none of the terminals. You need to fix the error and try again. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal actions read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_terminals_schedule_actions(
          body :: Adyen.Management.V1.ScheduleTerminalActionsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.ScheduleTerminalActionsResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_terminals_schedule_actions(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Management.V1.TerminalActionsTerminalLevel, :post_terminals_schedule_actions},
      url: "/terminals/scheduleActions",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V1.ScheduleTerminalActionsRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.ScheduleTerminalActionsResponse, :t}},
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
