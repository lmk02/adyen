defmodule Adyen.Transfer.V2.Transactions do
  @moduledoc """
  Provides API endpoints related to transactions
  """

  @default_client Adyen.Client

  @doc """
  Get all transactions

  >Versions 1 and 2 of the Transfers API are deprecated. If you are just starting your implementation, use the latest version.

  Returns all the transactions related to a balance account, account holder, or balance platform.

  When making this request, you must include at least one of the following:
  - `balanceAccountId`
  - `accountHolderId`
  - `balancePlatform`.

  This endpoint supports cursor-based pagination. The response returns the first page of results, and returns links to the next and previous pages when applicable. You can use the links to page through the results.


  ## Options

    * `balancePlatform`: The unique identifier of the [balance platform](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/get/balancePlatforms/{id}__queryParam_id).
      
      Required if you don't provide a `balanceAccountId` or `accountHolderId`.
    * `paymentInstrumentId`: The unique identifier of the [payment instrument](https://docs.adyen.com/api-explorer/balanceplatform/latest/get/paymentInstruments/_id_).
      
      To use this parameter, you must also provide a `balanceAccountId`, `accountHolderId`, or `balancePlatform`.
      
      The `paymentInstrumentId` must be related to the `balanceAccountId` or `accountHolderId` that you provide.
    * `accountHolderId`: The unique identifier of the [account holder](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/get/accountHolders/{id}__queryParam_id).
      
      Required if you don't provide a `balanceAccountId` or `balancePlatform`.
      
      If you provide a `balanceAccountId`, the `accountHolderId` must be related to the `balanceAccountId`.
    * `balanceAccountId`: The unique identifier of the [balance account](https://docs.adyen.com/api-explorer/#/balanceplatform/latest/get/balanceAccounts/{id}__queryParam_id).
      
      Required if you don't provide an `accountHolderId` or `balancePlatform`.
      
      If you provide an `accountHolderId`, the `balanceAccountId` must be related to the `accountHolderId`.
    * `cursor`: The `cursor` returned in the links of the previous response.
    * `createdSince`: Only include transactions that have been created on or after this point in time. The value must be in ISO 8601 format. For example, **2021-05-30T15:07:40Z**.
    * `createdUntil`: Only include transactions that have been created on or before this point in time. The value must be in ISO 8601 format. For example, **2021-05-30T15:07:40Z**.
    * `sortOrder`: Determines the sort order of the returned transactions. The sort order is based on the creation date of the transaction.
      
      Possible values:
      
       - **asc**: Ascending order, from oldest to most recent.
      
      - **desc**: Descending order, from most recent to oldest.
      
      Default value: **asc**.
    * `limit`: The number of items returned per page, maximum of 100 items. By default, the response returns 10 items per page.

  """
  @spec get_transactions(opts :: keyword) ::
          {:ok, Adyen.Transfer.V2.TransactionSearchResponse.t()}
          | {:error, Adyen.Transfer.V2.RestServiceError.t()}
  def get_transactions(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :accountHolderId,
        :balanceAccountId,
        :balancePlatform,
        :createdSince,
        :createdUntil,
        :cursor,
        :limit,
        :paymentInstrumentId,
        :sortOrder
      ])

    client.request(%{
      args: [],
      call: {Adyen.Transfer.V2.Transactions, :get_transactions},
      url: "/transactions",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Transfer.V2.TransactionSearchResponse, :t}},
        {401, {Adyen.Transfer.V2.RestServiceError, :t}},
        {403, {Adyen.Transfer.V2.RestServiceError, :t}},
        {422, {Adyen.Transfer.V2.RestServiceError, :t}},
        {500, {Adyen.Transfer.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a transaction

  >Versions 1 and 2 of the Transfers API are deprecated. If you are just starting your implementation, use the latest version.

  Returns a transaction.
  """
  @spec get_transactions_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V2.Transaction.t()}
          | {:error, Adyen.Transfer.V2.RestServiceError.t()}
  def get_transactions_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.Transfer.V2.Transactions, :get_transactions_id},
      url: "/transactions/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Transfer.V2.Transaction, :t}},
        {401, {Adyen.Transfer.V2.RestServiceError, :t}},
        {403, {Adyen.Transfer.V2.RestServiceError, :t}},
        {422, {Adyen.Transfer.V2.RestServiceError, :t}},
        {500, {Adyen.Transfer.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
