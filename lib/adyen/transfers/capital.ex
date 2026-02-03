defmodule Adyen.Transfers.Capital do
  @moduledoc """
  Provides API endpoints related to capital
  """

  alias Adyen.Transfers.Capital
  alias Adyen.Transfers.CapitalGrant
  alias Adyen.Transfers.CapitalGrantInfo
  alias Adyen.Transfers.CapitalGrants
  alias Adyen.Transfers.RestServiceError

  @default_client Adyen.Client

  @doc """
  Get a capital account

  Returns a list of grants with status and outstanding balances.

  ## Options

    * `counterpartyAccountHolderId`: The counterparty account holder id.

  """
  @spec get_grants(opts :: keyword) ::
          {:ok, CapitalGrants.t()}
          | {:error, RestServiceError.t()}
  def get_grants(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:counterpartyAccountHolderId])

    client.request(%{
      args: [],
      call: {Capital, :get_grants},
      url: "/grants",
      method: :get,
      query: query,
      response: [
        {200, {CapitalGrants, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {404, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get grant reference details

  Returns the details of a capital account specified in the path.
  """
  @spec get_grant(id :: String.t(), opts :: keyword) ::
          {:ok, CapitalGrant.t()} | {:error, RestServiceError.t()}
  def get_grant(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Capital, :get_grant},
      url: "/grants/#{id}",
      method: :get,
      response: [
        {200, {CapitalGrant, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {404, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
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
  @spec create_grants(body :: CapitalGrantInfo.t(), opts :: keyword) ::
          {:ok, CapitalGrant.t()} | {:error, RestServiceError.t()}
  def create_grants(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Capital, :create_grants},
      url: "/grants",
      body: body,
      method: :post,
      request: [{"application/json", {CapitalGrantInfo, :t}}],
      response: [
        {200, {CapitalGrant, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {404, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
