defmodule Adyen.Management.V1.MyAPICredential do
  @moduledoc """
  Provides API endpoints related to my api credential
  """

  @default_client Adyen.Client

  @doc """
  Remove allowed origin

  Removes the [allowed origin](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) specified in the path.
  The API key from the request is used to identify the [API credential](https://docs.adyen.com/development-resources/api-credentials).

  You can make this request with any of the Management API roles.
  """
  @spec delete_me_allowed_origins_origin_id(originId :: String.t(), opts :: keyword) ::
          :ok | {:error, Adyen.Management.V1.RestServiceError.t()}
  def delete_me_allowed_origins_origin_id(originId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [originId: originId],
      call: {Adyen.Management.V1.MyAPICredential, :delete_me_allowed_origins_origin_id},
      url: "/me/allowedOrigins/#{originId}",
      method: :delete,
      response: [
        {204, :null},
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
  Get API credential details

  Returns your [API credential](https://docs.adyen.com/development-resources/api-credentials) details based on the API Key you used in the request.

  You can make this request with any of the Management API roles.
  """
  @spec get_me(opts :: keyword) ::
          {:ok, Adyen.Management.V1.MeApiCredential.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_me(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {Adyen.Management.V1.MyAPICredential, :get_me},
      url: "/me",
      method: :get,
      response: [
        {200, {Adyen.Management.V1.MeApiCredential, :t}},
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
  Get allowed origins

  Returns the list of [allowed origins](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) of your [API credential](https://docs.adyen.com/development-resources/api-credentials) based on the API key you used in the request.

  You can make this request with any of the Management API roles.
  """
  @spec get_me_allowed_origins(opts :: keyword) ::
          {:ok, Adyen.Management.V1.AllowedOriginsResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_me_allowed_origins(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {Adyen.Management.V1.MyAPICredential, :get_me_allowed_origins},
      url: "/me/allowedOrigins",
      method: :get,
      response: [
        {200, {Adyen.Management.V1.AllowedOriginsResponse, :t}},
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
  Get allowed origin details

  Returns the details of the [allowed origin](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) specified in the path.
  The API key from the request is used to identify the [API credential](https://docs.adyen.com/development-resources/api-credentials).

  You can make this request with any of the Management API roles.
  """
  @spec get_me_allowed_origins_origin_id(originId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V1.AllowedOrigin.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_me_allowed_origins_origin_id(originId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [originId: originId],
      call: {Adyen.Management.V1.MyAPICredential, :get_me_allowed_origins_origin_id},
      url: "/me/allowedOrigins/#{originId}",
      method: :get,
      response: [
        {200, {Adyen.Management.V1.AllowedOrigin, :t}},
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
  Add allowed origin

  Adds an allowed origin to the list of [allowed origins](https://docs.adyen.com/development-resources/client-side-authentication#allowed-origins) of your API credential.
  The API key from the request is used to identify the [API credential](https://docs.adyen.com/development-resources/api-credentials).

  You can make this request with any of the Management API roles.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_me_allowed_origins(
          body :: Adyen.Management.V1.CreateAllowedOriginRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V1.AllowedOrigin.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_me_allowed_origins(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Management.V1.MyAPICredential, :post_me_allowed_origins},
      url: "/me/allowedOrigins",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V1.CreateAllowedOriginRequest, :t}}],
      response: [
        {200, {Adyen.Management.V1.AllowedOrigin, :t}},
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
  Generate a client key

  Generates a new [client key](https://docs.adyen.com/development-resources/client-side-authentication/) used to authenticate requests from your payment environment.
  You can use the new client key a few minutes after generating it.
  The old client key stops working 24 hours after generating a new one.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec post_me_generate_client_key(opts :: keyword) ::
          {:ok, Adyen.Management.V1.GenerateClientKeyResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def post_me_generate_client_key(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {Adyen.Management.V1.MyAPICredential, :post_me_generate_client_key},
      url: "/me/generateClientKey",
      method: :post,
      response: [
        {200, {Adyen.Management.V1.GenerateClientKeyResponse, :t}},
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
