defmodule Adyen.BalancePlatform.V2.NetworkTokens do
  @moduledoc """
  Provides API endpoints related to network tokens
  """

  @default_client Adyen.Client

  @doc """
  Get a network token

  Returns the details of a network token.
  """
  @spec get_network_tokens_network_token_id(networkTokenId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.GetNetworkTokenResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_network_tokens_network_token_id(networkTokenId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [networkTokenId: networkTokenId],
      call: {Adyen.BalancePlatform.V2.NetworkTokens, :get_network_tokens_network_token_id},
      url: "/networkTokens/#{networkTokenId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.GetNetworkTokenResponse, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
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
  @spec patch_network_tokens_network_token_id(
          networkTokenId :: String.t(),
          body :: Adyen.BalancePlatform.V2.UpdateNetworkTokenRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def patch_network_tokens_network_token_id(networkTokenId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [networkTokenId: networkTokenId, body: body],
      call: {Adyen.BalancePlatform.V2.NetworkTokens, :patch_network_tokens_network_token_id},
      url: "/networkTokens/#{networkTokenId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V2.UpdateNetworkTokenRequest, :t}}],
      response: [
        {202, :null},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
