defmodule Adyen.Payouts.Initialization do
  @moduledoc """
  Provides API endpoints related to initialization
  """

  @default_client Adyen.Client

  @doc """
  Store payout details

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

  Stores payment details under the `PAYOUT` recurring contract. These payment details can be used later to submit a payout via the `/submitThirdParty` call.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_store_detail(body :: Adyen.Payouts.StoreDetailRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payouts.StoreDetailResponse.t()} | {:error, Adyen.Payouts.ServiceError.t()}
  def post_store_detail(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payouts.Initialization, :post_store_detail},
      url: "/storeDetail",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payouts.StoreDetailRequest, :t}}],
      response: [
        {200, {Adyen.Payouts.StoreDetailResponse, :t}},
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
  Store details and submit a payout

  > This endpoint is **deprecated** and no longer supports new integrations. Do one of the following:
  >- If you are building a new integration, use the POST [/transfers](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers) endpoint instead.
  > - If you are already using the Payout API, reach out to your Adyen contact to learn how to migrate to the Transfers API.
  >
  > With the Transfers API, you can:
  > - Handle multiple payout use cases with a single API.
  > - Use new payout functionalities, such as instant payouts to bank accounts.
  > - Receive webhooks with more details and defined transfer states.
  >
  > For more information about the payout features of the Transfers API, see our [Payouts](https://docs.adyen.com/payouts/payout-service) documentation.

  Submits a payout and stores its details for subsequent payouts.

  The submitted payout must be confirmed or declined either by a reviewer or via `/confirmThirdParty` or `/declineThirdParty` calls.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_store_detail_and_submit_third_party(
          body :: Adyen.Payouts.StoreDetailAndSubmitRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Payouts.StoreDetailAndSubmitResponse.t()}
          | {:error, Adyen.Payouts.ServiceError.t()}
  def post_store_detail_and_submit_third_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payouts.Initialization, :post_store_detail_and_submit_third_party},
      url: "/storeDetailAndSubmitThirdParty",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payouts.StoreDetailAndSubmitRequest, :t}}],
      response: [
        {200, {Adyen.Payouts.StoreDetailAndSubmitResponse, :t}},
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
  Submit a payout

  > This endpoint is **deprecated** and no longer supports new integrations. Do one of the following:
  >- If you are building a new integration, use the POST [/transfers](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers) endpoint instead.
  > - If you are already using the Payout API, reach out to your Adyen contact to learn how to migrate to the Transfers API.
  >
  > With the Transfers API, you can:
  > - Handle multiple payout use cases with a single API.
  > - Use new payout functionalities, such as instant payouts to bank accounts.
  > - Receive webhooks with more details and defined transfer states.
  >
  > For more information about the payout features of the Transfers API, see our [Payouts](https://docs.adyen.com/payouts/payout-service) documentation.

  Submits a payout using the previously stored payment details. To store payment details, use the `/storeDetail` API call.

  The submitted payout must be confirmed or declined either by a reviewer or via `/confirmThirdParty` or `/declineThirdParty` calls.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_submit_third_party(body :: Adyen.Payouts.SubmitRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payouts.SubmitResponse.t()} | {:error, Adyen.Payouts.ServiceError.t()}
  def post_submit_third_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payouts.Initialization, :post_submit_third_party},
      url: "/submitThirdParty",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payouts.SubmitRequest, :t}}],
      response: [
        {200, {Adyen.Payouts.SubmitResponse, :t}},
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
