defmodule Adyen.BalancePlatform.AccountHolders do
  @moduledoc """
  Provides API endpoints related to account holders
  """

  alias Adyen.BalancePlatform.AccountHolder
  alias Adyen.BalancePlatform.AccountHolderInfo
  alias Adyen.BalancePlatform.AccountHolders
  alias Adyen.BalancePlatform.AccountHolderUpdateRequest
  alias Adyen.BalancePlatform.GetTaxFormResponse
  alias Adyen.BalancePlatform.PaginatedBalanceAccountsResponse
  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.TransactionRulesResponse

  @default_client Adyen.Client

  @doc """
  Get an account holder

  Returns an account holder.
  """
  @spec get_account_holder(id :: String.t(), opts :: keyword) ::
          {:ok, AccountHolder.t()}
          | {:error, RestServiceError.t()}
  def get_account_holder(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AccountHolders, :get_account_holder},
      url: "/accountHolders/#{id}",
      method: :get,
      response: [
        {200, {AccountHolder, :t}},
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
  Get all balance accounts of an account holder

  Returns a paginated list of the balance accounts associated with an account holder. To fetch multiple pages, use the query parameters. 

  For example, to limit the page to 5 balance accounts and skip the first 10, use `/accountHolders/{id}/balanceAccounts?limit=5&offset=10`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.

  """
  @spec get_account_holder_balance_accounts(id :: String.t(), opts :: keyword) ::
          {:ok, PaginatedBalanceAccountsResponse.t()}
          | {:error, RestServiceError.t()}
  def get_account_holder_balance_accounts(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {AccountHolders, :get_account_holder_balance_accounts},
      url: "/accountHolders/#{id}/balanceAccounts",
      method: :get,
      query: query,
      response: [
        {200, {PaginatedBalanceAccountsResponse, :t}},
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
  Get a tax form

  Generates a tax form for account holders operating in the US. For more information, refer to US tax forms for [marketplaces](https://docs.adyen.com/marketplaces/us-tax-forms/) or [platforms](https://docs.adyen.com/platforms/us-tax-forms/) .

  ## Options

    * `formType`: The type of tax form you want to retrieve. Accepted values are **US1099k** and **US1099nec**
    * `year`: The tax year in YYYY format for the tax form you want to retrieve
    * `legalEntityId`: The legal entity reference whose tax form you want to retrieve

  """
  @spec get_account_holder_tax_forms(id :: String.t(), opts :: keyword) ::
          {:ok, GetTaxFormResponse.t()}
          | {:error, RestServiceError.t()}
  def get_account_holder_tax_forms(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:formType, :legalEntityId, :year])

    client.request(%{
      args: [id: id],
      call: {AccountHolders, :get_account_holder_tax_forms},
      url: "/accountHolders/#{id}/taxForms",
      method: :get,
      query: query,
      response: [
        {200, {GetTaxFormResponse, :t}},
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
  Get all transaction rules for an account holder

  Returns a list of transaction rules associated with an account holder.
  """
  @spec get_account_holder_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, TransactionRulesResponse.t()}
          | {:error, RestServiceError.t()}
  def get_account_holder_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AccountHolders, :get_account_holder_transaction_rules},
      url: "/accountHolders/#{id}/transactionRules",
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

  @doc """
  Update an account holder

  Updates an account holder. When updating an account holder resource, if a parameter is not provided in the request, it is left unchanged.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_account_holder(
          id :: String.t(),
          body :: AccountHolderUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AccountHolder.t()}
          | {:error, RestServiceError.t()}
  def update_account_holder(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {AccountHolders, :update_account_holder},
      url: "/accountHolders/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {AccountHolderUpdateRequest, :t}}],
      response: [
        {200, {AccountHolder, :t}},
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
  Create an account holder

  Creates an account holder linked to a [legal entity](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/legalEntities).


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_account_holder(body :: AccountHolderInfo.t(), opts :: keyword) ::
          {:ok, AccountHolder.t()}
          | {:error, RestServiceError.t()}
  def create_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AccountHolders, :create_account_holder},
      url: "/accountHolders",
      body: body,
      method: :post,
      request: [{"application/json", {AccountHolderInfo, :t}}],
      response: [
        {200, {AccountHolder, :t}},
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
