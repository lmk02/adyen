defmodule Adyen.Transfer.V3.Capital do
  @moduledoc """
  Provides API endpoints related to capital
  """

  @default_client Adyen.Client

  @doc """
  Get a capital account

  Returns a list of grants with status and outstanding balances.

  ## Options

    * `counterpartyAccountHolderId`: The counterparty account holder id.

  """
  @spec get_grants(opts :: keyword) ::
          {:ok, Adyen.Transfer.V3.CapitalGrants.t()}
          | {:error, Adyen.Transfer.V3.RestServiceError.t()}
  def get_grants(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:counterpartyAccountHolderId])

    client.request(%{
      args: [],
      call: {Adyen.Transfer.V3.Capital, :get_grants},
      url: "/grants",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Transfer.V3.CapitalGrants, :t}},
        {400, {Adyen.Transfer.V3.RestServiceError, :t}},
        {401, {Adyen.Transfer.V3.RestServiceError, :t}},
        {403, {Adyen.Transfer.V3.RestServiceError, :t}},
        {404, {Adyen.Transfer.V3.RestServiceError, :t}},
        {422, {Adyen.Transfer.V3.RestServiceError, :t}},
        {500, {Adyen.Transfer.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get grant reference details

  Returns the details of a capital account specified in the path.
  """
  @spec get_grants_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V3.CapitalGrant.t()}
          | {:error, Adyen.Transfer.V3.RestServiceError.t()}
  def get_grants_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.Transfer.V3.Capital, :get_grants_id},
      url: "/grants/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Transfer.V3.CapitalGrant, :t}},
        {400, {Adyen.Transfer.V3.RestServiceError, :t}},
        {401, {Adyen.Transfer.V3.RestServiceError, :t}},
        {403, {Adyen.Transfer.V3.RestServiceError, :t}},
        {404, {Adyen.Transfer.V3.RestServiceError, :t}},
        {422, {Adyen.Transfer.V3.RestServiceError, :t}},
        {500, {Adyen.Transfer.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Request a grant payout

  Requests the payout of the selected grant offer.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_grants(body :: Adyen.Transfer.V3.CapitalGrantInfo.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V3.CapitalGrant.t()}
          | {:error, Adyen.Transfer.V3.RestServiceError.t()}
  def post_grants(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V3.Capital, :post_grants},
      url: "/grants",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V3.CapitalGrantInfo, :t}}],
      response: [
        {200, {Adyen.Transfer.V3.CapitalGrant, :t}},
        {400, {Adyen.Transfer.V3.RestServiceError, :t}},
        {401, {Adyen.Transfer.V3.RestServiceError, :t}},
        {403, {Adyen.Transfer.V3.RestServiceError, :t}},
        {404, {Adyen.Transfer.V3.RestServiceError, :t}},
        {422, {Adyen.Transfer.V3.RestServiceError, :t}},
        {500, {Adyen.Transfer.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
