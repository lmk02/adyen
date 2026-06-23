defmodule Adyen.BalancePlatform.V2.BalanceAccounts do
  @moduledoc """
  Provides API endpoints related to balance accounts
  """

  @default_client Adyen.Client

  @doc """
  Get a balance account

  Returns a balance account and its balances for the default currency and other currencies with a non-zero balance.
  """
  @spec get_balance_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccount.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_balance_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.BalanceAccounts, :get_balance_accounts_id},
      url: "/balanceAccounts/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccount, :t}},
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
  Get payment instruments linked to a balance account

  Returns a paginated list of the payment instruments associated with a balance account. 

  To fetch multiple pages, use the query parameters.For example, to limit the page to 3 payment instruments which are in active status and to skip the first 6, use `/balanceAccounts/{id}/paymentInstruments?limit=3&offset=6&status=active`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.
    * `status`: The status of the payment instruments that you want to get. By default, the response includes payment instruments with any status.

  """
  @spec get_balance_accounts_id_payment_instruments(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.PaginatedPaymentInstrumentsResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_balance_accounts_id_payment_instruments(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :status])

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.V2.BalanceAccounts, :get_balance_accounts_id_payment_instruments},
      url: "/balanceAccounts/#{id}/paymentInstruments",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.PaginatedPaymentInstrumentsResponse, :t}},
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
  Get all transaction rules for a balance account

  Returns a list of transaction rules associated with a balance account.
  """
  @spec get_balance_accounts_id_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_balance_accounts_id_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.V2.BalanceAccounts, :get_balance_accounts_id_transaction_rules},
      url: "/balanceAccounts/#{id}/transactionRules",
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
  Update a balance account

  Updates a balance account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_balance_accounts_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V2.BalanceAccountUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccount.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def patch_balance_accounts_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V2.BalanceAccounts, :patch_balance_accounts_id},
      url: "/balanceAccounts/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V2.BalanceAccountUpdateRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccount, :t}},
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
  Create a balance account

  Creates a balance account that holds the funds of the associated account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts(
          body :: Adyen.BalancePlatform.V2.BalanceAccountInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccount.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def post_balance_accounts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V2.BalanceAccounts, :post_balance_accounts},
      url: "/balanceAccounts",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V2.BalanceAccountInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccount, :t}},
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
