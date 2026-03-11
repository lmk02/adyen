defmodule Adyen.BalancePlatform.V2.AccountHolders do
  @moduledoc """
  Provides API endpoints related to account holders
  """

  @default_client Adyen.Client

  @doc """
  Get an account holder

  Returns an account holder.
  """
  @spec get_account_holders_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.AccountHolder.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_account_holders_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :get_account_holders_id},
      url: "/accountHolders/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.AccountHolder, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
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
          {:ok, Adyen.BalancePlatform.V2.PaginatedBalanceAccountsResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_account_holders_id_balance_accounts(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :get_account_holders_id_balance_accounts},
      url: "/accountHolders/#{id}/balanceAccounts",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.PaginatedBalanceAccountsResponse, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get summary of tax forms for an account holder

  Returns a summary of all tax forms for an account holder.

  ## Options

    * `formType`: The type of tax form you want a summary for. Accepted values are **US1099k** and **US1099nec**.

  """
  @spec get_account_holders_id_tax_form_summary(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.TaxFormSummaryResponse.t()} | :error
  def get_account_holders_id_tax_form_summary(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:formType])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :get_account_holders_id_tax_form_summary},
      url: "/accountHolders/#{id}/taxFormSummary",
      method: :get,
      query: query,
      response: [{200, {Adyen.BalancePlatform.V2.TaxFormSummaryResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get a tax form

  Generates a tax form for account holders operating in the US. For more information, refer to US tax forms for [marketplaces](https://docs.adyen.com/marketplaces/us-tax-forms/) or [platforms](https://docs.adyen.com/platforms/us-tax-forms/) .

  ## Options

    * `formType`: The type of tax form you want to retrieve. Accepted values are **US1099k** and **US1099nec**.
    * `year`: The tax year in **YYYY** format for the tax form you want to retrieve.
    * `legalEntityId`: The legal entity reference whose tax form you want to retrieve.

  """
  @spec get_account_holders_id_tax_forms(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.GetTaxFormResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_account_holders_id_tax_forms(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:formType, :legalEntityId, :year])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :get_account_holders_id_tax_forms},
      url: "/accountHolders/#{id}/taxForms",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.GetTaxFormResponse, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {404, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for an account holder

  Returns a list of transaction rules associated with an account holder.
  """
  @spec get_account_holders_id_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_account_holders_id_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :get_account_holders_id_transaction_rules},
      url: "/accountHolders/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.TransactionRulesResponse, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
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
          body :: Adyen.BalancePlatform.V2.AccountHolderUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.AccountHolder.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def patch_account_holders_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :patch_account_holders_id},
      url: "/accountHolders/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V2.AccountHolderUpdateRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.AccountHolder, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
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
          body :: Adyen.BalancePlatform.V2.AccountHolderInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.AccountHolder.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def post_account_holders(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V2.AccountHolders, :post_account_holders},
      url: "/accountHolders",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V2.AccountHolderInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.AccountHolder, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
