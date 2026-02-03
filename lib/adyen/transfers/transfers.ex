defmodule Adyen.Transfers.Transfers do
  @moduledoc """
  Provides API endpoints related to transfers
  """

  alias Adyen.Transfers.ApproveTransfersRequest
  alias Adyen.Transfers.CancelTransfersRequest
  alias Adyen.Transfers.FindTransfersResponse
  alias Adyen.Transfers.ReturnTransferRequest
  alias Adyen.Transfers.ReturnTransferResponse
  alias Adyen.Transfers.ServiceError
  alias Adyen.Transfers.Transfer
  alias Adyen.Transfers.TransferData
  alias Adyen.Transfers.TransferInfo
  alias Adyen.Transfers.Transfers
  alias Adyen.Transfers.TransferServiceRestServiceError

  @default_client Adyen.Client

  @doc """
  Get all transfers

  Returns all the transfers related to a balance account, account holder, or balance platform.

  When making this request, you must include at least one of the following:
  - `balanceAccountId`
  - `accountHolderId`
  - `balancePlatform`.

  This endpoint supports cursor-based pagination. The response returns the first page of results, and returns links to the next and previous pages when applicable. You can use the links to page through the results.


  ## Options

    * `balancePlatform`: The unique identifier of the [balance platform](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/get/balancePlatforms/{id}__queryParam_id).
      
      Required if you don't provide a `balanceAccountId` or `accountHolderId`.
    * `accountHolderId`: The unique identifier of the [account holder](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/get/accountHolders/{id}__queryParam_id).
      
      Required if you don't provide a `balanceAccountId` or `balancePlatform`.
      
      If you provide a `balanceAccountId`, the `accountHolderId` must be related to the `balanceAccountId`.
    * `balanceAccountId`: The unique identifier of the [balance account](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/get/balanceAccounts/{id}__queryParam_id).
      
      Required if you don't provide an `accountHolderId` or `balancePlatform`.
      
      If you provide an `accountHolderId`, the `balanceAccountId` must be related to the `accountHolderId`.
    * `paymentInstrumentId`: The unique identifier of the [payment instrument](https://docs.adyen.com/api-explorer/balanceplatform/latest/get/paymentInstruments/_id_).
      
      To use this parameter, you must also provide a `balanceAccountId`, `accountHolderId`, or `balancePlatform`.
      
      The `paymentInstrumentId` must be related to the `balanceAccountId` or `accountHolderId` that you provide.
    * `reference`: The reference you provided in the POST [/transfers](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers) request
    * `category`: The type of transfer.
      
      Possible values:
      
       - **bank**: Transfer to a [transfer instrument](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/transferInstruments__resParam_id) or a bank account.
      
      - **internal**: Transfer to another [balance account](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/post/balanceAccounts__resParam_id) within your platform.
      
      - **issuedCard**: Transfer initiated by a Adyen-issued card.
      
      - **platformPayment**: Fund movements related to payments that are acquired for your users.
    * `createdSince`: Only include transfers that have been created on or after this point in time. The value must be in ISO 8601 format and not earlier than 6 months before the `createdUntil` date. For example, **2021-05-30T15:07:40Z**.
    * `createdUntil`: Only include transfers that have been created on or before this point in time. The value must be in ISO 8601 format and not later than 6 months after the `createdSince` date. For example, **2021-05-30T15:07:40Z**.
    * `sortOrder`: Determines the sort order of the returned transfers. The sort order is based on the creation date of the transfers.
      
      Possible values:
      
       - **asc**: Ascending order, from oldest to most recent.
      
      - **desc**: Descending order, from most recent to oldest.
      
      Default value: **asc**.
    * `cursor`: The `cursor` returned in the links of the previous response.
    * `limit`: The number of items returned per page, maximum of 100 items. By default, the response returns 10 items per page.

  """
  @spec get_transfers(opts :: keyword) ::
          {:ok, FindTransfersResponse.t()}
          | {:error, TransferServiceRestServiceError.t()}
  def get_transfers(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :accountHolderId,
        :balanceAccountId,
        :balancePlatform,
        :category,
        :createdSince,
        :createdUntil,
        :cursor,
        :limit,
        :paymentInstrumentId,
        :reference,
        :sortOrder
      ])

    client.request(%{
      args: [],
      call: {Transfers, :get_transfers},
      url: "/transfers",
      method: :get,
      query: query,
      response: [
        {200, {FindTransfersResponse, :t}},
        {401, {TransferServiceRestServiceError, :t}},
        {403, {TransferServiceRestServiceError, :t}},
        {422, {TransferServiceRestServiceError, :t}},
        {500, {TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a transfer

  Returns the details of a specified transfer.
  """
  @spec get_transfer(id :: String.t(), opts :: keyword) ::
          {:ok, TransferData.t()}
          | {:error, TransferServiceRestServiceError.t()}
  def get_transfer(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Transfers, :get_transfer},
      url: "/transfers/#{id}",
      method: :get,
      response: [
        {200, {TransferData, :t}},
        {401, {TransferServiceRestServiceError, :t}},
        {403, {TransferServiceRestServiceError, :t}},
        {422, {TransferServiceRestServiceError, :t}},
        {500, {TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end

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
  @spec create_transfer(body :: TransferInfo.t(), opts :: keyword) ::
          {:ok, Transfer.t()}
          | {:error,
             ServiceError.t()
             | TransferServiceRestServiceError.t()}
  def create_transfer(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Transfers, :create_transfer},
      url: "/transfers",
      body: body,
      method: :post,
      request: [{"application/json", {TransferInfo, :t}}],
      response: [
        {202, {Transfer, :t}},
        {401, {ServiceError, :t}},
        {403, {TransferServiceRestServiceError, :t}},
        {422, {TransferServiceRestServiceError, :t}},
        {500, {TransferServiceRestServiceError, :t}}
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
  @spec create_transfers_approve(
          body :: ApproveTransfersRequest.t(),
          opts :: keyword
        ) ::
          {:ok, any}
          | {:error,
             ServiceError.t()
             | TransferServiceRestServiceError.t()}
  def create_transfers_approve(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Transfers, :create_transfers_approve},
      url: "/transfers/approve",
      body: body,
      method: :post,
      request: [{"application/json", {ApproveTransfersRequest, :t}}],
      response: [
        {200, :unknown},
        {401, {ServiceError, :t}},
        {403, {TransferServiceRestServiceError, :t}},
        {422, {TransferServiceRestServiceError, :t}},
        {500, {TransferServiceRestServiceError, :t}}
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
  @spec create_transfers_cancel(body :: CancelTransfersRequest.t(), opts :: keyword) ::
          {:ok, any} | {:error, TransferServiceRestServiceError.t()}
  def create_transfers_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Transfers, :create_transfers_cancel},
      url: "/transfers/cancel",
      body: body,
      method: :post,
      request: [{"application/json", {CancelTransfersRequest, :t}}],
      response: [
        {200, :unknown},
        {401, {TransferServiceRestServiceError, :t}},
        {403, {TransferServiceRestServiceError, :t}},
        {422, {TransferServiceRestServiceError, :t}},
        {500, {TransferServiceRestServiceError, :t}}
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
  @spec create_transfer_id_returns(
          transferId :: String.t(),
          body :: ReturnTransferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, ReturnTransferResponse.t()}
          | {:error, TransferServiceRestServiceError.t()}
  def create_transfer_id_returns(transferId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transferId: transferId, body: body],
      call: {Transfers, :create_transfer_id_returns},
      url: "/transfers/#{transferId}/returns",
      body: body,
      method: :post,
      request: [{"application/json", {ReturnTransferRequest, :t}}],
      response: [
        {200, {ReturnTransferResponse, :t}},
        {401, {TransferServiceRestServiceError, :t}},
        {403, {TransferServiceRestServiceError, :t}},
        {422, {TransferServiceRestServiceError, :t}},
        {500, {TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
