defmodule Adyen.Management.AccountStoreLevel do
  @moduledoc """
  Provides API endpoints related to account store level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of stores

  Returns a list of stores for the merchant account identified in the path. The list is grouped into pages as defined by the query parameters.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.
    * `reference`: The reference of the store.

  """
  @spec get_merchants_merchant_id_stores(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.ListStoresResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_stores(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :reference])

    client.request(%{
      args: [merchantId: merchantId],
      call: {Adyen.Management.AccountStoreLevel, :get_merchants_merchant_id_stores},
      url: "/merchants/#{merchantId}/stores",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.ListStoresResponse, :t}},
        {204, :null},
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
  Get a store

  Returns the details of the store identified in the path.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_merchants_merchant_id_stores_store_id(
          merchantId :: String.t(),
          storeId :: String.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Store.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_stores_store_id(merchantId, storeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, storeId: storeId],
      call: {Adyen.Management.AccountStoreLevel, :get_merchants_merchant_id_stores_store_id},
      url: "/merchants/#{merchantId}/stores/#{storeId}",
      method: :get,
      response: [
        {200, {Adyen.Management.Store, :t}},
        {204, :null},
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
  Get a list of stores

  Returns a list of stores. The list is grouped into pages as defined by the query parameters.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.
    * `reference`: The reference of the store.
    * `merchantId`: The unique identifier of the merchant account.

  """
  @spec get_stores(opts :: keyword) ::
          {:ok, Adyen.Management.ListStoresResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_stores(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:merchantId, :pageNumber, :pageSize, :reference])

    client.request(%{
      args: [],
      call: {Adyen.Management.AccountStoreLevel, :get_stores},
      url: "/stores",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.ListStoresResponse, :t}},
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
  Get a store

  Returns the details of the store identified in the path.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_stores_store_id(storeId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.Store.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def get_stores_store_id(storeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [storeId: storeId],
      call: {Adyen.Management.AccountStoreLevel, :get_stores_store_id},
      url: "/stores/#{storeId}",
      method: :get,
      response: [
        {200, {Adyen.Management.Store, :t}},
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
  Update a store

  Updates the store identified in the path. You can only update some store parameters.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_stores_store_id(
          merchantId :: String.t(),
          storeId :: String.t(),
          body :: Adyen.Management.UpdateStoreRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Store.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_stores_store_id(merchantId, storeId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, storeId: storeId, body: body],
      call: {Adyen.Management.AccountStoreLevel, :patch_merchants_merchant_id_stores_store_id},
      url: "/merchants/#{merchantId}/stores/#{storeId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateStoreRequest, :t}}],
      response: [
        {200, {Adyen.Management.Store, :t}},
        {204, :null},
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
  Update a store

  Updates the store identified in the path.
  You can only update some store parameters.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_stores_store_id(
          storeId :: String.t(),
          body :: Adyen.Management.UpdateStoreRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Store.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def patch_stores_store_id(storeId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [storeId: storeId, body: body],
      call: {Adyen.Management.AccountStoreLevel, :patch_stores_store_id},
      url: "/stores/#{storeId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateStoreRequest, :t}}],
      response: [
        {200, {Adyen.Management.Store, :t}},
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
  Create a store

  Creates a store for the merchant account identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_stores(
          merchantId :: String.t(),
          body :: Adyen.Management.StoreCreationRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Store.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_stores(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call: {Adyen.Management.AccountStoreLevel, :post_merchants_merchant_id_stores},
      url: "/merchants/#{merchantId}/stores",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.StoreCreationRequest, :t}}],
      response: [
        {200, {Adyen.Management.Store, :t}},
        {204, :null},
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
  Create a store

  Creates a store for the merchant account specified in the request.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Stores read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_stores(
          body :: Adyen.Management.StoreCreationWithMerchantCodeRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.Store.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def post_stores(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Management.AccountStoreLevel, :post_stores},
      url: "/stores",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.StoreCreationWithMerchantCodeRequest, :t}}],
      response: [
        {200, {Adyen.Management.Store, :t}},
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
