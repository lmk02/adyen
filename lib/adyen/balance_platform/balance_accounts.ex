defmodule Adyen.BalancePlatform.BalanceAccounts do
  @moduledoc """
  Provides API endpoints related to balance accounts
  """

  alias Adyen.BalancePlatform.BalanceAccount
  alias Adyen.BalancePlatform.BalanceAccountInfo
  alias Adyen.BalancePlatform.BalanceAccounts
  alias Adyen.BalancePlatform.BalanceAccountUpdateRequest
  alias Adyen.BalancePlatform.BalanceSweepConfigurationsResponse
  alias Adyen.BalancePlatform.CreateSweepConfigurationV2
  alias Adyen.BalancePlatform.PaginatedPaymentInstrumentsResponse
  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.SweepConfigurationV2
  alias Adyen.BalancePlatform.TransactionRulesResponse
  alias Adyen.BalancePlatform.UpdateSweepConfigurationV2

  @default_client Adyen.Client

  @doc """
  Delete a sweep

  Deletes a sweep for a balance account.
  """
  @spec delete_balance_accounts_balance_account_id_sweep(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, RestServiceError.t()}
  def delete_balance_accounts_balance_account_id_sweep(balanceAccountId, sweepId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId],
      call: {BalanceAccounts, :delete_balance_accounts_balance_account_id_sweep},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      method: :delete,
      response: [
        {204, :null},
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
  Get all sweeps for a balance account

  Returns a list of the sweeps configured for a balance account.

  To fetch multiple pages, use the query parameters. For example, to limit the page to 5 sweeps and to skip the first 10, use `/balanceAccounts/{balanceAccountId}/sweeps?limit=5&offset=10`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.

  """
  @spec get_balance_accounts_balance_account_id_sweeps(
          balanceAccountId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, BalanceSweepConfigurationsResponse.t()}
          | {:error, RestServiceError.t()}
  def get_balance_accounts_balance_account_id_sweeps(balanceAccountId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [balanceAccountId: balanceAccountId],
      call: {BalanceAccounts, :get_balance_accounts_balance_account_id_sweeps},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps",
      method: :get,
      query: query,
      response: [
        {200, {BalanceSweepConfigurationsResponse, :t}},
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
  Get a sweep

  Returns a sweep.
  """
  @spec get_balance_accounts_balance_account_id_sweep(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, SweepConfigurationV2.t()}
          | {:error, RestServiceError.t()}
  def get_balance_accounts_balance_account_id_sweep(balanceAccountId, sweepId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId],
      call: {BalanceAccounts, :get_balance_accounts_balance_account_id_sweep},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      method: :get,
      response: [
        {200, {SweepConfigurationV2, :t}},
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
  Get a balance account

  Returns a balance account and its balances for the default currency and other currencies with a non-zero balance.
  """
  @spec get_balance_account(id :: String.t(), opts :: keyword) ::
          {:ok, BalanceAccount.t()}
          | {:error, RestServiceError.t()}
  def get_balance_account(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {BalanceAccounts, :get_balance_account},
      url: "/balanceAccounts/#{id}",
      method: :get,
      response: [
        {200, {BalanceAccount, :t}},
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
  Get payment instruments linked to a balance account

  Returns a paginated list of the payment instruments associated with a balance account. 

  To fetch multiple pages, use the query parameters.For example, to limit the page to 3 payment instruments which are in active status and to skip the first 6, use `/balanceAccounts/{id}/paymentInstruments?limit=3&offset=6&status=active`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.
    * `status`: The status of the payment instruments that you want to get. By default, the response includes payment instruments with any status.

  """
  @spec get_balance_account_payment_instruments(id :: String.t(), opts :: keyword) ::
          {:ok, PaginatedPaymentInstrumentsResponse.t()}
          | {:error, RestServiceError.t()}
  def get_balance_account_payment_instruments(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :status])

    client.request(%{
      args: [id: id],
      call: {BalanceAccounts, :get_balance_account_payment_instruments},
      url: "/balanceAccounts/#{id}/paymentInstruments",
      method: :get,
      query: query,
      response: [
        {200, {PaginatedPaymentInstrumentsResponse, :t}},
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
  Get all transaction rules for a balance account

  Returns a list of transaction rules associated with a balance account.
  """
  @spec get_balance_account_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, TransactionRulesResponse.t()}
          | {:error, RestServiceError.t()}
  def get_balance_account_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {BalanceAccounts, :get_balance_account_transaction_rules},
      url: "/balanceAccounts/#{id}/transactionRules",
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
  Update a sweep

  Updates a sweep. When updating a sweep resource, note that if a request parameter is not provided, the parameter is left unchanged.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_balance_accounts_balance_account_id_sweep(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          body :: UpdateSweepConfigurationV2.t(),
          opts :: keyword
        ) ::
          {:ok, SweepConfigurationV2.t()}
          | {:error, RestServiceError.t()}
  def update_balance_accounts_balance_account_id_sweep(balanceAccountId, sweepId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId, body: body],
      call: {BalanceAccounts, :update_balance_accounts_balance_account_id_sweep},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      body: body,
      method: :patch,
      request: [{"application/json", {UpdateSweepConfigurationV2, :t}}],
      response: [
        {200, {SweepConfigurationV2, :t}},
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
  Update a balance account

  Updates a balance account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_balance_account(
          id :: String.t(),
          body :: BalanceAccountUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, BalanceAccount.t()}
          | {:error, RestServiceError.t()}
  def update_balance_account(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {BalanceAccounts, :update_balance_account},
      url: "/balanceAccounts/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {BalanceAccountUpdateRequest, :t}}],
      response: [
        {200, {BalanceAccount, :t}},
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
  Create a balance account

  Creates a balance account that holds the funds of the associated account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_balance_account(
          body :: BalanceAccountInfo.t(),
          opts :: keyword
        ) ::
          {:ok, BalanceAccount.t()}
          | {:error, RestServiceError.t()}
  def create_balance_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {BalanceAccounts, :create_balance_account},
      url: "/balanceAccounts",
      body: body,
      method: :post,
      request: [{"application/json", {BalanceAccountInfo, :t}}],
      response: [
        {200, {BalanceAccount, :t}},
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
  Create a sweep

  Creates a sweep that results in moving funds from or to a balance account.

  A sweep pulls in or pushes out funds based on a defined schedule, amount, currency, and a source or a destination.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_balance_accounts_balance_account_id_sweeps(
          balanceAccountId :: String.t(),
          body :: CreateSweepConfigurationV2.t(),
          opts :: keyword
        ) ::
          {:ok, SweepConfigurationV2.t()}
          | {:error, RestServiceError.t()}
  def create_balance_accounts_balance_account_id_sweeps(balanceAccountId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, body: body],
      call: {BalanceAccounts, :create_balance_accounts_balance_account_id_sweeps},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps",
      body: body,
      method: :post,
      request: [{"application/json", {CreateSweepConfigurationV2, :t}}],
      response: [
        {200, {SweepConfigurationV2, :t}},
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
