defmodule Adyen.Management.V3.AccountMerchantLevel do
  @moduledoc """
  Provides API endpoints related to account merchant level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of merchant accounts

  Returns the list of merchant accounts that your API credential has access to. The list is grouped into pages as defined by the query parameters. 

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Account read

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_merchants(opts :: keyword) ::
          {:ok, Adyen.Management.V3.ListMerchantResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_merchants(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [],
      call: {Adyen.Management.V3.AccountMerchantLevel, :get_merchants},
      url: "/merchants",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V3.ListMerchantResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a merchant account

  Returns the merchant account specified in the path. Your API credential must have access to the merchant account.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Account read
  """
  @spec get_merchants_merchant_id(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.Merchant.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_merchants_merchant_id(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call: {Adyen.Management.V3.AccountMerchantLevel, :get_merchants_merchant_id},
      url: "/merchants/#{merchantId}",
      method: :get,
      response: [
        {200, {Adyen.Management.V3.Merchant, :t}},
        {204, :null},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a merchant account

  Creates a merchant account for the company account specified in the request.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Accounts read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants(body :: Adyen.Management.V3.CreateMerchantRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.CreateMerchantResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_merchants(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Management.V3.AccountMerchantLevel, :post_merchants},
      url: "/merchants",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V3.CreateMerchantRequest, :t}}],
      response: [
        {200, {Adyen.Management.V3.CreateMerchantResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Request to activate a merchant account

  Sends a request to activate the merchant account identified in the path.

  You get the result of the activation asynchronously through a [`merchant.updated`](https://docs.adyen.com/api-explorer/ManagementNotification/latest/post/merchant.updated) webhook. Once the merchant account is activated, you can start using it to accept payments and payouts.

  Use this endpoint if your integration requires it, such as Adyen for Platforms Manage. Your Adyen contact will set up your access.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Accounts read and write
  """
  @spec post_merchants_merchant_id_activate(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.RequestActivationResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_merchants_merchant_id_activate(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call: {Adyen.Management.V3.AccountMerchantLevel, :post_merchants_merchant_id_activate},
      url: "/merchants/#{merchantId}/activate",
      method: :post,
      response: [
        {200, {Adyen.Management.V3.RequestActivationResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
