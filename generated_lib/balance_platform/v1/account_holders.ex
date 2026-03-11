defmodule Adyen.BalancePlatform.V1.AccountHolders do
  @moduledoc """
  Provides API endpoints related to account holders
  """

  @default_client Adyen.Client

  @doc """
  Get an account holder

  Returns an account holder.
  """
  @spec get_account_holders_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.AccountHolder.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_account_holders_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.AccountHolders, :get_account_holders_id},
      url: "/accountHolders/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.AccountHolder, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all balance accounts of an account holder

  Returns a paginated list of the balance accounts associated with an account holder. To fetch multiple pages, use the query parameters. 

  For example, to limit the page to 5 balance accounts and skip the first 10, use `/accountHolders/{id}/balanceAccounts?limit=5&offset=10`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.

  """
  @spec get_account_holders_id_balance_accounts(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.PaginatedBalanceAccountsResponse.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_account_holders_id_balance_accounts(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.AccountHolders, :get_account_holders_id_balance_accounts},
      url: "/accountHolders/#{id}/balanceAccounts",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V1.PaginatedBalanceAccountsResponse, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update an account holder

  Updates an account holder. When updating an account holder resource, if a parameter is not provided in the request, it is left unchanged.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_account_holders_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V1.AccountHolder.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.AccountHolder.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def patch_account_holders_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V1.AccountHolders, :patch_account_holders_id},
      url: "/accountHolders/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V1.AccountHolder, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.AccountHolder, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create an account holder

  Creates an account holder linked to a [legal entity](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/legalEntities).


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_account_holders(
          body :: Adyen.BalancePlatform.V1.AccountHolderInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.AccountHolder.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def post_account_holders(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.AccountHolders, :post_account_holders},
      url: "/accountHolders",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.AccountHolderInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.AccountHolder, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
