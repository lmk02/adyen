defmodule Adyen.BalancePlatform.V2.CustomPayoutSchedulesSweeps do
  @moduledoc """
  Provides API endpoints related to custom payout schedules sweeps
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
        ) :: :ok | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def delete_balance_accounts_balance_account_id_sweeps_sweep_id(
        balanceAccountId,
        sweepId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId],
      call:
        {Adyen.BalancePlatform.V2.CustomPayoutSchedulesSweeps,
         :delete_balance_accounts_balance_account_id_sweeps_sweep_id},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      method: :delete,
      response: [
        {204, :null},
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
          {:ok, Adyen.BalancePlatform.V2.BalanceSweepConfigurationsResponse.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_balance_accounts_balance_account_id_sweeps(balanceAccountId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [balanceAccountId: balanceAccountId],
      call:
        {Adyen.BalancePlatform.V2.CustomPayoutSchedulesSweeps,
         :get_balance_accounts_balance_account_id_sweeps},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceSweepConfigurationsResponse, :t}},
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
  Get a sweep

  Returns a sweep.
  """
  @spec get_balance_accounts_balance_account_id_sweeps_sweep_id(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.SweepConfigurationV2.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_balance_accounts_balance_account_id_sweeps_sweep_id(
        balanceAccountId,
        sweepId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, sweepId: sweepId],
      call:
        {Adyen.BalancePlatform.V2.CustomPayoutSchedulesSweeps,
         :get_balance_accounts_balance_account_id_sweeps_sweep_id},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.SweepConfigurationV2, :t}},
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
  Update a sweep

  Updates a sweep. When updating a sweep resource, note that if a request parameter is not provided, the parameter is left unchanged.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_balance_accounts_balance_account_id_sweeps_sweep_id(
          balanceAccountId :: String.t(),
          sweepId :: String.t(),
          body :: Adyen.BalancePlatform.V2.UpdateSweepConfigurationV2.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.SweepConfigurationV2.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
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
        {Adyen.BalancePlatform.V2.CustomPayoutSchedulesSweeps,
         :patch_balance_accounts_balance_account_id_sweeps_sweep_id},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps/#{sweepId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V2.UpdateSweepConfigurationV2, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.SweepConfigurationV2, :t}},
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
  Create a sweep

  Creates a sweep that results in moving funds from or to a balance account.

  A sweep pulls in or pushes out funds based on a defined schedule, amount, currency, and a source or a destination.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts_balance_account_id_sweeps(
          balanceAccountId :: String.t(),
          body :: Adyen.BalancePlatform.V2.CreateSweepConfigurationV2.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.SweepConfigurationV2.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def post_balance_accounts_balance_account_id_sweeps(balanceAccountId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, body: body],
      call:
        {Adyen.BalancePlatform.V2.CustomPayoutSchedulesSweeps,
         :post_balance_accounts_balance_account_id_sweeps},
      url: "/balanceAccounts/#{balanceAccountId}/sweeps",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V2.CreateSweepConfigurationV2, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.SweepConfigurationV2, :t}},
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
