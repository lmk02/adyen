defmodule Adyen.Management.APICredentialsMerchantLevel do
  @moduledoc """
  Provides API endpoints related to api credentials merchant level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of API credentials

  Returns the list of [API credentials](https://docs.adyen.com/development-resources/api-credentials) for the merchant account. The list is grouped into pages as defined by the query parameters.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_merchants_merchant_id_api_credentials(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.ListMerchantApiCredentialsResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_api_credentials(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.APICredentialsMerchantLevel, :get_merchants_merchant_id_api_credentials},
      url: "/merchants/#{merchantId}/apiCredentials",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.ListMerchantApiCredentialsResponse, :t}},
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
  Get an API credential

  Returns the [API credential](https://docs.adyen.com/development-resources/api-credentials) identified in the path.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec get_merchants_merchant_id_api_credentials_api_credential_id(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.ApiCredential.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_api_credentials_api_credential_id(
        merchantId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId],
      call:
        {Adyen.Management.APICredentialsMerchantLevel,
         :get_merchants_merchant_id_api_credentials_api_credential_id},
      url: "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}",
      method: :get,
      response: [
        {200, {Adyen.Management.ApiCredential, :t}},
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
  Update an API credential

  Changes the API credential's roles, or allowed origins. The request has the new values for the fields you want to change. The response contains the full updated API credential, including the new values from the request. 

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_api_credentials_api_credential_id(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          body :: Adyen.Management.UpdateMerchantApiCredentialRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.ApiCredential.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_api_credentials_api_credential_id(
        merchantId,
        apiCredentialId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId, body: body],
      call:
        {Adyen.Management.APICredentialsMerchantLevel,
         :patch_merchants_merchant_id_api_credentials_api_credential_id},
      url: "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateMerchantApiCredentialRequest, :t}}],
      response: [
        {200, {Adyen.Management.ApiCredential, :t}},
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
  Create an API credential

  Creates an [API credential](https://docs.adyen.com/development-resources/api-credentials) for the company account identified in the path. In the request, you can specify the roles and allowed origins for the new API credential.

  The response includes the:
  * [API key](https://docs.adyen.com/development-resources/api-authentication#api-key-authentication): used for API request authentication.
  * [Client key](https://docs.adyen.com/development-resources/client-side-authentication#how-it-works): public key used for client-side authentication.
  * [Username and password](https://docs.adyen.com/development-resources/api-authentication#using-basic-authentication): used for basic authentication.

  > Make sure you store the API key securely in your system. You won't be able to retrieve it later.

  If your API key is lost or compromised, you need to [generate a new API key](https://docs.adyen.com/api-explorer/#/ManagementService/v1/post/merchants/{merchantId}/apiCredentials/{apiCredentialId}/generateApiKey).

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_api_credentials(
          merchantId :: String.t(),
          body :: Adyen.Management.CreateMerchantApiCredentialRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.CreateApiCredentialResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_api_credentials(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.APICredentialsMerchantLevel,
         :post_merchants_merchant_id_api_credentials},
      url: "/merchants/#{merchantId}/apiCredentials",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.CreateMerchantApiCredentialRequest, :t}}],
      response: [
        {200, {Adyen.Management.CreateApiCredentialResponse, :t}},
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
end
