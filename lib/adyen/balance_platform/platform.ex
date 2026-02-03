defmodule Adyen.BalancePlatform.Platform do
  @moduledoc """
  Provides API endpoints related to platform
  """

  alias Adyen.BalancePlatform.BalancePlatform
  alias Adyen.BalancePlatform.PaginatedAccountHoldersResponse
  alias Adyen.BalancePlatform.Platform
  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.TransactionRulesResponse

  @default_client Adyen.Client

  @doc """
  Get a balance platform

  Returns a balance platform.
  """
  @spec get_balance_platform(id :: String.t(), opts :: keyword) ::
          {:ok, BalancePlatform.t()}
          | {:error, RestServiceError.t()}
  def get_balance_platform(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Platform, :get_balance_platform},
      url: "/balancePlatforms/#{id}",
      method: :get,
      response: [
        {200, {BalancePlatform, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all account holders under a balance platform

  Returns a paginated list of all the account holders that belong to the balance platform. To fetch multiple pages, use the query parameters. 

  For example, to limit the page to 5 account holders and to skip the first 20, use `/balancePlatforms/{id}/accountHolders?limit=5&offset=20`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.

  """
  @spec get_balance_platform_account_holders(id :: String.t(), opts :: keyword) ::
          {:ok, PaginatedAccountHoldersResponse.t()}
          | {:error, RestServiceError.t()}
  def get_balance_platform_account_holders(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {Platform, :get_balance_platform_account_holders},
      url: "/balancePlatforms/#{id}/accountHolders",
      method: :get,
      query: query,
      response: [
        {200, {PaginatedAccountHoldersResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for a balance platform

  Returns a list of transaction rules associated with a balance platform.
  """
  @spec get_balance_platform_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, TransactionRulesResponse.t()}
          | {:error, RestServiceError.t()}
  def get_balance_platform_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Platform, :get_balance_platform_transaction_rules},
      url: "/balancePlatforms/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {TransactionRulesResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
