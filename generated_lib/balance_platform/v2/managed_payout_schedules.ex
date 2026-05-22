defmodule Adyen.BalancePlatform.V2.ManagedPayoutSchedules do
  @moduledoc """
  Provides API endpoints related to managed payout schedules
  """

  @default_client Adyen.Client

  @doc """
  Delete a managed payout schedule on a balance account

  Delete a payout schedule applied to a balance account.
  """
  @spec delete_balance_accounts_balance_account_id_payout_schedules_id(
          balanceAccountId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def delete_balance_accounts_balance_account_id_payout_schedules_id(
        balanceAccountId,
        id,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, id: id],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :delete_balance_accounts_balance_account_id_payout_schedules_id},
      url: "/balanceAccounts/#{balanceAccountId}/payoutSchedules/#{id}",
      method: :delete,
      response: [
        {204, :null},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all managed payout schedules on a balance account

  Returns a list of all managed payout schedules that are configured on a balance account. You can use query parameters to filter the elements that are returned in the list.

  ## Options

    * `currency`: The three-character [ISO currency code](https://docs.adyen.com/development-resources/currency-codes) of the currency used in the payout schedule.
    * `cursor`: The `cursor` returned in the links of the previous response.
    * `limit`: The number of items returned per page, maximum of 100 items. By default, the response returns 10 items per page.

  """
  @spec get_balance_accounts_balance_account_id_payout_schedules(
          balanceAccountId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccountConfigurations.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_balance_account_id_payout_schedules(balanceAccountId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:currency, :cursor, :limit])

    client.request(%{
      args: [balanceAccountId: balanceAccountId],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :get_balance_accounts_balance_account_id_payout_schedules},
      url: "/balanceAccounts/#{balanceAccountId}/payoutSchedules",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccountConfigurations, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a specific managed payout schedule on a balance account

  Returns the specified payout schedule.
  """
  @spec get_balance_accounts_balance_account_id_payout_schedules_id(
          balanceAccountId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccountConfiguration.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_balance_account_id_payout_schedules_id(
        balanceAccountId,
        id,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, id: id],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :get_balance_accounts_balance_account_id_payout_schedules_id},
      url: "/balanceAccounts/#{balanceAccountId}/payoutSchedules/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccountConfiguration, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  View executions of a managed payout schedule

  View information about the executions of a managed payout schedule on the specified balance account. An execution is an attempt to make a payout according to the payout schedule. 

  ## Options

    * `results`: Contains a list of payout statuses. If included, the response returns only executed payouts that currently have one of the specified statuses.
      
      Possible statuses:
      - **succeeded**: The payout was sent successfully.
      - **failed**: The payout was not sent due to an error.
      - **skipped**: The payout was not triggered as expected.
    * `limit`: The number of items returned per page.
      
      Default: **10**
    * `offset`: The page number to be returned.
      
      Default: **1**

  """
  @spec get_balance_accounts_balance_account_id_payout_schedules_id_executions(
          balanceAccountId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.PayoutScheduleExecutions.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_balance_account_id_payout_schedules_id_executions(
        balanceAccountId,
        id,
        opts \\ []
      ) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :results])

    client.request(%{
      args: [balanceAccountId: balanceAccountId, id: id],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :get_balance_accounts_balance_account_id_payout_schedules_id_executions},
      url: "/balanceAccounts/#{balanceAccountId}/payoutSchedules/#{id}/executions",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.PayoutScheduleExecutions, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all managed payout schedules on your balance platform

  Returns a list of all the payout schedules that are configured for your balance platform. You can use query parameters to filter the elements that are returned in the list.

  ## Options

    * `countryCode`: The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code of the country to which the payout configuration applies.
    * `currency`: The three-character [ISO currency code](https://docs.adyen.com/development-resources/currency-codes) of the currency used in the payout configuration.

  """
  @spec get_balance_platforms_balance_platform_id_payout_schedules(
          balancePlatformId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalancePlatformConfigurations.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_balance_platforms_balance_platform_id_payout_schedules(balancePlatformId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:countryCode, :currency])

    client.request(%{
      args: [balancePlatformId: balancePlatformId],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :get_balance_platforms_balance_platform_id_payout_schedules},
      url: "/balancePlatforms/#{balancePlatformId}/payoutSchedules",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.BalancePlatformConfigurations, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a specific managed payout schedule on your balance platform

  Returns the specified managed payout schedule configured on your balance platform.
  """
  @spec get_balance_platforms_balance_platform_id_payout_schedules_id(
          balancePlatformId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalancePlatformConfiguration.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_balance_platforms_balance_platform_id_payout_schedules_id(
        balancePlatformId,
        id,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balancePlatformId: balancePlatformId, id: id],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :get_balance_platforms_balance_platform_id_payout_schedules_id},
      url: "/balancePlatforms/#{balancePlatformId}/payoutSchedules/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.BalancePlatformConfiguration, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a managed payout schedule on a balance account

  Update a managed payout schedule applied to a balance account. If an optional parameter is not included in the request, it remains unchanged.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_balance_accounts_balance_account_id_payout_schedules_id(
          balanceAccountId :: String.t(),
          id :: String.t(),
          body :: Adyen.BalancePlatform.V2.PatchableBalanceAccountConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccountConfiguration.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def patch_balance_accounts_balance_account_id_payout_schedules_id(
        balanceAccountId,
        id,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, id: id, body: body],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :patch_balance_accounts_balance_account_id_payout_schedules_id},
      url: "/balanceAccounts/#{balanceAccountId}/payoutSchedules/#{id}",
      body: body,
      method: :patch,
      request: [
        {"application/json",
         {Adyen.BalancePlatform.V2.PatchableBalanceAccountConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccountConfiguration, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Apply a managed payout schedule to a balance account

  Apply a managed payout schedule to a balance account. This payout schedule is based on an existing payout schedule in your balance platform.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts_balance_account_id_payout_schedules(
          balanceAccountId :: String.t(),
          body :: Adyen.BalancePlatform.V2.BalanceAccountConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.BalanceAccountConfiguration.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def post_balance_accounts_balance_account_id_payout_schedules(
        balanceAccountId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, body: body],
      call:
        {Adyen.BalancePlatform.V2.ManagedPayoutSchedules,
         :post_balance_accounts_balance_account_id_payout_schedules},
      url: "/balanceAccounts/#{balanceAccountId}/payoutSchedules",
      body: body,
      method: :post,
      request: [
        {"application/json", {Adyen.BalancePlatform.V2.BalanceAccountConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.BalancePlatform.V2.BalanceAccountConfiguration, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
