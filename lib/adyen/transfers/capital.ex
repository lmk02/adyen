defmodule Adyen.Transfers.Capital do
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
          {:ok, Adyen.Transfers.CapitalGrants.t()}
          | {:error, Adyen.Transfers.RestServiceError.t()}
  def get_grants(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:counterpartyAccountHolderId])

    client.request(%{
      args: [],
      call: {Adyen.Transfers.Capital, :get_grants},
      url: "/grants",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Transfers.CapitalGrants, :t}},
        {400, {Adyen.Transfers.RestServiceError, :t}},
        {401, {Adyen.Transfers.RestServiceError, :t}},
        {403, {Adyen.Transfers.RestServiceError, :t}},
        {404, {Adyen.Transfers.RestServiceError, :t}},
        {422, {Adyen.Transfers.RestServiceError, :t}},
        {500, {Adyen.Transfers.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get grant reference details

  Returns the details of a capital account specified in the path.
  """
  @spec get_grant(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Transfers.CapitalGrant.t()} | {:error, Adyen.Transfers.RestServiceError.t()}
  def get_grant(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.Transfers.Capital, :get_grant},
      url: "/grants/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Transfers.CapitalGrant, :t}},
        {400, {Adyen.Transfers.RestServiceError, :t}},
        {401, {Adyen.Transfers.RestServiceError, :t}},
        {403, {Adyen.Transfers.RestServiceError, :t}},
        {404, {Adyen.Transfers.RestServiceError, :t}},
        {422, {Adyen.Transfers.RestServiceError, :t}},
        {500, {Adyen.Transfers.RestServiceError, :t}}
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
  @spec create_grants(body :: Adyen.Transfers.CapitalGrantInfo.t(), opts :: keyword) ::
          {:ok, Adyen.Transfers.CapitalGrant.t()} | {:error, Adyen.Transfers.RestServiceError.t()}
  def create_grants(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfers.Capital, :create_grants},
      url: "/grants",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfers.CapitalGrantInfo, :t}}],
      response: [
        {200, {Adyen.Transfers.CapitalGrant, :t}},
        {400, {Adyen.Transfers.RestServiceError, :t}},
        {401, {Adyen.Transfers.RestServiceError, :t}},
        {403, {Adyen.Transfers.RestServiceError, :t}},
        {404, {Adyen.Transfers.RestServiceError, :t}},
        {422, {Adyen.Transfers.RestServiceError, :t}},
        {500, {Adyen.Transfers.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
