defmodule Adyen.Transfer.V3.Transfers do
  @moduledoc """
  Provides API endpoints related to transfers
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
  @spec post_transfers(body :: Adyen.Transfer.V3.TransferInfo.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V3.Transfer.t()}
          | {:error,
             Adyen.Transfer.V3.ServiceError.t()
             | Adyen.Transfer.V3.TransferServiceRestServiceError.t()}
  def post_transfers(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V3.Transfers, :post_transfers},
      url: "/transfers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V3.TransferInfo, :t}}],
      response: [
        {200, {Adyen.Transfer.V3.Transfer, :t}},
        {202, {Adyen.Transfer.V3.Transfer, :t}},
        {401, {Adyen.Transfer.V3.ServiceError, :t}},
        {403, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {422, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {500, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Approve initiated transfers

  Initiates the approval of a list of transfers that triggered an additional [review](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers#request-review). Adyen sends the outcome of the approval request through webhooks.

  To use this endpoint:
  - Your API credential must have the **TransferService Approve** [role](https://docs.adyen.com/platforms/manage-access/webservice-roles/?tab=transfers_3).
  - The account holder must have the required [capabilities](https://docs.adyen.com/platforms/verification-overview/capabilities).

  Reach out to your Adyen contact to set up these permissions.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfers_approve(
          body :: Adyen.Transfer.V3.ApproveTransfersRequest.t(),
          opts :: keyword
        ) ::
          :ok
          | {:error,
             Adyen.Transfer.V3.ServiceError.t()
             | Adyen.Transfer.V3.TransferServiceRestServiceError.t()}
  def post_transfers_approve(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V3.Transfers, :post_transfers_approve},
      url: "/transfers/approve",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V3.ApproveTransfersRequest, :t}}],
      response: [
        {200, :null},
        {401, {Adyen.Transfer.V3.ServiceError, :t}},
        {403, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {422, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {500, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel initiated transfers

  Initiates the cancellation of a list of transfers that triggered an additional [review](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers#request-review). Adyen sends the outcome of the cancel request through webhooks.

  To use this endpoint:
  - Your API credential must have the **TransferService Approve** [role](https://docs.adyen.com/platforms/manage-access/webservice-roles/?tab=transfers_3).
  - The account holder must have the required [capabilities](https://docs.adyen.com/platforms/verification-overview/capabilities).

  Reach out to your Adyen contact to set up these permissions.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfers_cancel(
          body :: Adyen.Transfer.V3.CancelTransfersRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Transfer.V3.TransferServiceRestServiceError.t()}
  def post_transfers_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V3.Transfers, :post_transfers_cancel},
      url: "/transfers/cancel",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V3.CancelTransfersRequest, :t}}],
      response: [
        {200, :null},
        {401, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {403, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {422, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {500, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Return a transfer

  Initiates the return of previously transferred funds without creating a new `transferId`.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfers_transfer_id_returns(
          transferId :: String.t(),
          body :: Adyen.Transfer.V3.ReturnTransferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Transfer.V3.ReturnTransferResponse.t()}
          | {:error, Adyen.Transfer.V3.TransferServiceRestServiceError.t()}
  def post_transfers_transfer_id_returns(transferId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transferId: transferId, body: body],
      call: {Adyen.Transfer.V3.Transfers, :post_transfers_transfer_id_returns},
      url: "/transfers/#{transferId}/returns",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V3.ReturnTransferRequest, :t}}],
      response: [
        {200, {Adyen.Transfer.V3.ReturnTransferResponse, :t}},
        {401, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {403, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {422, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}},
        {500, {Adyen.Transfer.V3.TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
