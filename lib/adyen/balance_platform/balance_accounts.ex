defmodule Adyen.BalancePlatform.BalanceAccounts do
  @moduledoc """
  Provides API endpoints related to balance accounts
  """

  @default_client Adyen.Client

  @doc """
  Delete a sweep

  Deletes a sweep for a balance account.
  """
  @spec delete_balance_accounts_balance_account_id_sweeps_sweep_id(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def delete_balance_accounts_balance_account_id_sweeps_sweep_id(
        balanceAccountId,
        sweepId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId],
      call:
        {Adyen.BalancePlatform.BalanceAccounts,
         :delete_balance_accounts_balance_account_id_sweeps_sweep_id},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      method: :delete,
      response: [
        {204, :null},
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
          {:ok, Adyen.BalancePlatform.BalanceSweepConfigurationsResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_accounts_balance_account_id_sweeps(balanceAccountId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [balanceAccountId: balanceAccountId],
      call:
        {Adyen.BalancePlatform.BalanceAccounts, :get_balance_accounts_balance_account_id_sweeps},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.BalanceSweepConfigurationsResponse, :t}},
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
  Get a sweep

  Returns a sweep.
  """
  @spec get_balance_accounts_balance_account_id_sweeps_sweep_id(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.SweepConfigurationV2.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_accounts_balance_account_id_sweeps_sweep_id(
        balanceAccountId,
        sweepId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId],
      call:
        {Adyen.BalancePlatform.BalanceAccounts,
         :get_balance_accounts_balance_account_id_sweeps_sweep_id},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.SweepConfigurationV2, :t}},
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
  Get a balance account

  Returns a balance account and its balances for the default currency and other currencies with a non-zero balance.
  """
  @spec get_balance_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.BalanceAccount.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.BalanceAccounts, :get_balance_accounts_id},
      url: "/balanceAccounts/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.BalanceAccount, :t}},
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
  Get payment instruments linked to a balance account

  Returns a paginated list of the payment instruments associated with a balance account. 

  To fetch multiple pages, use the query parameters.For example, to limit the page to 3 payment instruments which are in active status and to skip the first 6, use `/balanceAccounts/{id}/paymentInstruments?limit=3&offset=6&status=active`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.
    * `status`: The status of the payment instruments that you want to get. By default, the response includes payment instruments with any status.

  """
  @spec get_balance_accounts_id_payment_instruments(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.PaginatedPaymentInstrumentsResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_accounts_id_payment_instruments(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :status])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.BalanceAccounts, :get_balance_accounts_id_payment_instruments},
      url: "/balanceAccounts/#{id}/paymentInstruments",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.PaginatedPaymentInstrumentsResponse, :t}},
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
  Get all transaction rules for a balance account

  Returns a list of transaction rules associated with a balance account.
  """
  @spec get_balance_accounts_id_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_balance_accounts_id_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.BalanceAccounts, :get_balance_accounts_id_transaction_rules},
      url: "/balanceAccounts/#{id}/transactionRules",
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

  @doc """
  Update a sweep

  Updates a sweep. When updating a sweep resource, note that if a request parameter is not provided, the parameter is left unchanged.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_balance_accounts_balance_account_id_sweeps_sweep_id(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          body :: Adyen.BalancePlatform.UpdateSweepConfigurationV2.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.SweepConfigurationV2.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def patch_balance_accounts_balance_account_id_sweeps_sweep_id(
        balanceAccountId,
        sweepId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId, body: body],
      call:
        {Adyen.BalancePlatform.BalanceAccounts,
         :patch_balance_accounts_balance_account_id_sweeps_sweep_id},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.UpdateSweepConfigurationV2, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.SweepConfigurationV2, :t}},
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
  Update a balance account

  Updates a balance account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_balance_accounts_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.BalanceAccountUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.BalanceAccount.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def patch_balance_accounts_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.BalanceAccounts, :patch_balance_accounts_id},
      url: "/balanceAccounts/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.BalanceAccountUpdateRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.BalanceAccount, :t}},
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
  Create a balance account

  Creates a balance account that holds the funds of the associated account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts(
          body :: Adyen.BalancePlatform.BalanceAccountInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.BalanceAccount.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def post_balance_accounts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.BalanceAccounts, :post_balance_accounts},
      url: "/balanceAccounts",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.BalanceAccountInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.BalanceAccount, :t}},
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
  Create a sweep

  Creates a sweep that results in moving funds from or to a balance account.

  A sweep pulls in or pushes out funds based on a defined schedule, amount, currency, and a source or a destination.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts_balance_account_id_sweeps(
          balanceAccountId :: String.t(),
          body :: Adyen.BalancePlatform.CreateSweepConfigurationV2.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.SweepConfigurationV2.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def post_balance_accounts_balance_account_id_sweeps(balanceAccountId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, body: body],
      call:
        {Adyen.BalancePlatform.BalanceAccounts, :post_balance_accounts_balance_account_id_sweeps},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.CreateSweepConfigurationV2, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.SweepConfigurationV2, :t}},
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
