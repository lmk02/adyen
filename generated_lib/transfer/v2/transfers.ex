defmodule Adyen.Transfer.V2.Transfers do
  @moduledoc """
  Provides API endpoint related to transfers
  """

  @default_client Adyen.Client

  @doc """
  Transfer funds

  >Versions 1 and 2 of the Transfers API are deprecated. If you are just starting your implementation, use the latest version.

  Starts a request to transfer funds to:
  - [Balance accounts](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/post/balanceAccounts)
  - [Transfer instruments](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/transferInstruments)
  - [Third-party bank accounts](https://docs.adyen.com/payouts/payout-service/pay-out-to-bank-accounts)
  - [Third-party cards](https://docs.adyen.com/payouts/payout-service/pay-out-to-cards)

  Adyen sends the outcome of the transfer request through webhooks.

  To use this endpoint:
  - Your API credential must have the **TransferService Webservice Initiate** [role](https://docs.adyen.com/platforms/manage-access/webservice-roles/?tab=transfers_3).
  - The account holder must have the required [capabilities](https://docs.adyen.com/platforms/verification-overview/capabilities).

  Reach out to your Adyen contact to set up these permissions.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfers(body :: Adyen.Transfer.V2.TransferInfo.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V2.Transfer.t()}
          | {:error,
             Adyen.Transfer.V2.ServiceError.t()
             | Adyen.Transfer.V2.TransferServiceRestServiceError.t()}
  def post_transfers(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V2.Transfers, :post_transfers},
      url: "/transfers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V2.TransferInfo, :t}}],
      response: [
        {202, {Adyen.Transfer.V2.Transfer, :t}},
        {401, {Adyen.Transfer.V2.ServiceError, :t}},
        {403, {Adyen.Transfer.V2.TransferServiceRestServiceError, :t}},
        {422, {Adyen.Transfer.V2.TransferServiceRestServiceError, :t}},
        {500, {Adyen.Transfer.V2.TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
