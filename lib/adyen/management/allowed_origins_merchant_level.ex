defmodule Adyen.Management.AllowedOriginsMerchantLevel do
  @moduledoc """
  Provides API endpoints related to allowed origins merchant level
  """

  @default_client Adyen.Client

  @doc """
  Delete an allowed origin

  Removes the [allowed origin](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) identified in the path. As soon as an allowed origin is removed, we no longer accept client-side requests from that domain.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec delete_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins_origin_id(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          originId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Management.RestServiceError.t()}
  def delete_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins_origin_id(
        merchantId,
        apiCredentialId,
        originId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId, originId: originId],
      call:
        {Adyen.Management.AllowedOriginsMerchantLevel,
         :delete_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins_origin_id},
      url:
        "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}/allowedOrigins/#{originId}",
      method: :delete,
      response: [
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
  Get a list of allowed origins

  Returns the list of [allowed origins](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) for the API credential identified in the path.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec get_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.AllowedOriginsResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins(
        merchantId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId],
      call:
        {Adyen.Management.AllowedOriginsMerchantLevel,
         :get_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins},
      url: "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}/allowedOrigins",
      method: :get,
      response: [
        {200, {Adyen.Management.AllowedOriginsResponse, :t}},
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
  Get an allowed origin

  Returns the [allowed origin](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) identified in the path.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec get_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins_origin_id(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          originId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.AllowedOrigin.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins_origin_id(
        merchantId,
        apiCredentialId,
        originId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId, originId: originId],
      call:
        {Adyen.Management.AllowedOriginsMerchantLevel,
         :get_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins_origin_id},
      url:
        "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}/allowedOrigins/#{originId}",
      method: :get,
      response: [
        {200, {Adyen.Management.AllowedOrigin, :t}},
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
  Create an allowed origin

  Adds a new [allowed origin](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) to the API credential's list of allowed origins.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          body :: Adyen.Management.AllowedOrigin.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.AllowedOrigin.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins(
        merchantId,
        apiCredentialId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId, body: body],
      call:
        {Adyen.Management.AllowedOriginsMerchantLevel,
         :post_merchants_merchant_id_api_credentials_api_credential_id_allowed_origins},
      url: "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}/allowedOrigins",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.AllowedOrigin, :t}}],
      response: [
        {200, {Adyen.Management.AllowedOrigin, :t}},
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
