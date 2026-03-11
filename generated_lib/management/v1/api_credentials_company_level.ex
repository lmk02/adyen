defmodule Adyen.Management.V1.APICredentialsCompanyLevel do
  @moduledoc """
  Provides API endpoints related to api credentials company level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of API credentials

  Returns the list of [API credentials](https://docs.adyen.com/development-resources/api-credentials) for the company account. The list is grouped into pages as defined by the query parameters.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_companies_company_id_api_credentials(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V1.ListCompanyApiCredentialsResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_companies_company_id_api_credentials(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [companyId: companyId],
      call:
        {Adyen.Management.V1.APICredentialsCompanyLevel,
         :get_companies_company_id_api_credentials},
      url: "/companies/#{companyId}/apiCredentials",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V1.ListCompanyApiCredentialsResponse, :t}},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
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
  @spec get_companies_company_id_api_credentials_api_credential_id(
          companyId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.CompanyApiCredential.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_companies_company_id_api_credentials_api_credential_id(
        companyId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, apiCredentialId: apiCredentialId],
      call:
        {Adyen.Management.V1.APICredentialsCompanyLevel,
         :get_companies_company_id_api_credentials_api_credential_id},
      url: "/companies/#{companyId}/apiCredentials/#{apiCredentialId}",
      method: :get,
      response: [
        {200, {Adyen.Management.V1.CompanyApiCredential, :t}},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update an API credential.

  Changes the API credential's roles, merchant account access, or allowed origins. The request has the new values for the fields you want to change. The response contains the full updated API credential, including the new values from the request. 

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_companies_company_id_api_credentials_api_credential_id(
          companyId :: String.t(),
          apiCredentialId :: String.t(),
          body :: Adyen.Management.V1.UpdateCompanyApiCredentialRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.CompanyApiCredential.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def patch_companies_company_id_api_credentials_api_credential_id(
        companyId,
        apiCredentialId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, apiCredentialId: apiCredentialId, body: body],
      call:
        {Adyen.Management.V1.APICredentialsCompanyLevel,
         :patch_companies_company_id_api_credentials_api_credential_id},
      url: "/companies/#{companyId}/apiCredentials/#{apiCredentialId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.V1.UpdateCompanyApiCredentialRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.CompanyApiCredential, :t}},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create an API credential.

  Creates an [API credential](https://docs.adyen.com/development-resources/api-credentials) for the company account identified in the path. In the request, you can specify which merchant accounts the new API credential will have access to, as well as its roles and allowed origins.

  The response includes several types of authentication details:
  * [API key](https://docs.adyen.com/development-resources/api-authentication#api-key-authentication): used for API request authentication.
  * [Client key](https://docs.adyen.com/development-resources/client-side-authentication#how-it-works): public key used for client-side authentication.
  * [Username and password](https://docs.adyen.com/development-resources/api-authentication#using-basic-authentication): used for basic authentication.

  > Make sure you store the API key securely in your system. You won't be able to retrieve it later.

  If your API key is lost or compromised, you need to [generate a new API key](https://docs.adyen.com/api-explorer/#/ManagementService/v1/post/companies/{companyId}/apiCredentials/{apiCredentialId}/generateApiKey).

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_companies_company_id_api_credentials(
          companyId :: String.t(),
          body :: Adyen.Management.V1.CreateCompanyApiCredentialRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.CreateCompanyApiCredentialResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_companies_company_id_api_credentials(companyId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, body: body],
      call:
        {Adyen.Management.V1.APICredentialsCompanyLevel,
         :post_companies_company_id_api_credentials},
      url: "/companies/#{companyId}/apiCredentials",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V1.CreateCompanyApiCredentialRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.CreateCompanyApiCredentialResponse, :t}},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
