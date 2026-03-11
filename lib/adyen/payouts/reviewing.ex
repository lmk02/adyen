defmodule Adyen.Payouts.Reviewing do
  @moduledoc """
  Provides API endpoints related to reviewing
  """

  @default_client Adyen.Client

  @doc """
  Confirm a payout

  > This endpoint is **deprecated** and no longer supports new integrations. Do one of the following:
  >- If you are building a new integration, use the [Transfers API](https://docs.adyen.com/api-explorer/transfers/latest/overview) instead.
  > - If you are already using the Payout API, reach out to your Adyen contact to learn how to migrate to the Transfers API.
  >
  > With the Transfers API, you can:
  > - Handle multiple payout use cases with a single API.
  > - Use new payout functionalities, such as instant payouts to bank accounts.
  > - Receive webhooks with more details and defined transfer states.
  >
  > For more information about the payout features of the Transfers API, see our [Payouts](https://docs.adyen.com/payouts/payout-service) documentation.

  Confirms a previously submitted payout.

  To cancel a payout, use the `/declineThirdParty` endpoint.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_confirm_third_party(body :: Adyen.Payouts.ModifyRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payouts.ModifyResponse.t()} | {:error, Adyen.Payouts.ServiceError.t()}
  def post_confirm_third_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payouts.Reviewing, :post_confirm_third_party},
      url: "/confirmThirdParty",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payouts.ModifyRequest, :t}}],
      response: [
        {200, {Adyen.Payouts.ModifyResponse, :t}},
        {400, {Adyen.Payouts.ServiceError, :t}},
        {401, {Adyen.Payouts.ServiceError, :t}},
        {403, {Adyen.Payouts.ServiceError, :t}},
        {422, {Adyen.Payouts.ServiceError, :t}},
        {500, {Adyen.Payouts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel a payout

  > This endpoint is **deprecated** and no longer supports new integrations. Do one of the following:
  >- If you are building a new integration, use the [Transfers API](https://docs.adyen.com/api-explorer/transfers/latest/overview) instead.
  > - If you are already using the Payout API, reach out to your Adyen contact to learn how to migrate to the Transfers API.
  >
  > With the Transfers API, you can:
  > - Handle multiple payout use cases with a single API.
  > - Use new payout functionalities, such as instant payouts to bank accounts.
  > - Receive webhooks with more details and defined transfer states.
  >
  > For more information about the payout features of the Transfers API, see our [Payouts](https://docs.adyen.com/payouts/payout-service) documentation.

  Cancels a previously submitted payout.

  To confirm and send a payout, use the `/confirmThirdParty` endpoint.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_decline_third_party(body :: Adyen.Payouts.ModifyRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payouts.ModifyResponse.t()} | {:error, Adyen.Payouts.ServiceError.t()}
  def post_decline_third_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payouts.Reviewing, :post_decline_third_party},
      url: "/declineThirdParty",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payouts.ModifyRequest, :t}}],
      response: [
        {200, {Adyen.Payouts.ModifyResponse, :t}},
        {400, {Adyen.Payouts.ServiceError, :t}},
        {401, {Adyen.Payouts.ServiceError, :t}},
        {403, {Adyen.Payouts.ServiceError, :t}},
        {422, {Adyen.Payouts.ServiceError, :t}},
        {500, {Adyen.Payouts.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
