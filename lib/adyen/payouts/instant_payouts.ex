defmodule Adyen.Payouts.InstantPayouts do
  @moduledoc """
  Provides API endpoint related to instant payouts
  """

  @default_client Adyen.Client

  @doc """
  Make an instant card payout

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

  With this call, you can pay out to your customers, and funds will be made available within 30 minutes on the cardholder's bank account (this is dependent on whether the issuer supports this functionality). Instant card payouts are only supported for Visa and Mastercard cards.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payout(body :: Adyen.Payouts.PayoutRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payouts.PayoutResponse.t()} | {:error, Adyen.Payouts.ServiceError.t()}
  def post_payout(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payouts.InstantPayouts, :post_payout},
      url: "/payout",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payouts.PayoutRequest, :t}}],
      response: [
        {200, {Adyen.Payouts.PayoutResponse, :t}},
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
