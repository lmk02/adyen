defmodule Adyen.BalancePlatform.NetworkTokens do
  @moduledoc """
  Provides API endpoints related to network tokens
  """

  alias Adyen.BalancePlatform.GetNetworkTokenResponse
  alias Adyen.BalancePlatform.NetworkTokens
  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.UpdateNetworkTokenRequest

  @default_client Adyen.Client

  @doc """
  Get a network token

  Returns the details of a network token.
  """
  @spec get_network_tokenetwork_token(networkTokenId :: String.t(), opts :: keyword) ::
          {:ok, GetNetworkTokenResponse.t()}
          | {:error, RestServiceError.t()}
  def get_network_tokenetwork_token(networkTokenId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [networkTokenId: networkTokenId],
      call: {NetworkTokens, :get_network_tokenetwork_token},
      url: "/networkTokens/#{networkTokenId}",
      method: :get,
      response: [
        {200, {GetNetworkTokenResponse, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a network token

  Updates the status of the network token.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_network_tokenetwork_token(
          networkTokenId :: String.t(),
          body :: UpdateNetworkTokenRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, RestServiceError.t()}
  def update_network_tokenetwork_token(networkTokenId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [networkTokenId: networkTokenId, body: body],
      call: {NetworkTokens, :update_network_tokenetwork_token},
      url: "/networkTokens/#{networkTokenId}",
      body: body,
      method: :patch,
      request: [{"application/json", {UpdateNetworkTokenRequest, :t}}],
      response: [
        {202, :null},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
