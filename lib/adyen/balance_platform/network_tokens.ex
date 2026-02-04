defmodule Adyen.BalancePlatform.NetworkTokens do
  @moduledoc """
  Provides API endpoints related to network tokens
  """

  @default_client Adyen.Client

  @doc """
  Get a network token

  Returns the details of a network token.
  """
  @spec get_network_tokenetwork_token(networkTokenId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.GetNetworkTokenResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_network_tokenetwork_token(networkTokenId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [networkTokenId: networkTokenId],
      call: {Adyen.BalancePlatform.NetworkTokens, :get_network_tokenetwork_token},
      url: "/networkTokens/#{networkTokenId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.GetNetworkTokenResponse, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
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
          body :: Adyen.BalancePlatform.UpdateNetworkTokenRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def update_network_tokenetwork_token(networkTokenId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [networkTokenId: networkTokenId, body: body],
      call: {Adyen.BalancePlatform.NetworkTokens, :update_network_tokenetwork_token},
      url: "/networkTokens/#{networkTokenId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.UpdateNetworkTokenRequest, :t}}],
      response: [
        {202, :null},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
