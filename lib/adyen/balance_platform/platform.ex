defmodule Adyen.BalancePlatform.Platform do
  @moduledoc """
  Provides API endpoints related to platform
  """

  @default_client Adyen.Client

  @doc """
  Get a balance platform

  Returns a balance platform.
  """
  @spec get_balance_platforms_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.BalancePlatform.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_platforms_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.Platform, :get_balance_platforms_id},
      url: "/balancePlatforms/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.BalancePlatform, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
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
  @spec get_balance_platforms_id_account_holders(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.PaginatedAccountHoldersResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_platforms_id_account_holders(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.Platform, :get_balance_platforms_id_account_holders},
      url: "/balancePlatforms/#{id}/accountHolders",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.PaginatedAccountHoldersResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for a balance platform

  Returns a list of transaction rules associated with a balance platform.
  """
  @spec get_balance_platforms_id_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_platforms_id_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.Platform, :get_balance_platforms_id_transaction_rules},
      url: "/balancePlatforms/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.TransactionRulesResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
