defmodule Adyen.BalancePlatform.V2.RecurringTopUps do
  @moduledoc """
  Provides API endpoints related to recurring top ups
  """

  @default_client Adyen.Client

  @doc """
  Delete a recurring top up

  Delete a recurring top up configuration by `topUpId`.

  For more information, refer to [Manage recurring top-ups](https://docs.adyen.com/issuing/add-manage-funds/top-ups/manage-recurring-top-ups).

  """
  @spec delete_balance_accounts_balance_account_id_recurring_top_ups_top_up_id(
          balanceAccountId :: String.t(),
          topUpId :: String.t(),
          opts :: keyword
        ) :: {:ok, any} | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def delete_balance_accounts_balance_account_id_recurring_top_ups_top_up_id(
        balanceAccountId,
        topUpId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, topUpId: topUpId],
      call:
        {Adyen.BalancePlatform.V2.RecurringTopUps,
         :delete_balance_accounts_balance_account_id_recurring_top_ups_top_up_id},
      url: "/balanceAccounts/#{balanceAccountId}/recurringTopUps/#{topUpId}",
      method: :delete,
      response: [
        {204, :unknown},
        {400, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
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
  Get recurring top ups for a specific balanceAccountId

  View all recurring top ups configured for a specific `balanceAccountId`.

  For more information, refer to [Manage recurring top-ups](https://docs.adyen.com/issuing/add-manage-funds/top-ups/manage-recurring-top-ups).

  ## Options

    * `limit`: The number of items to return per page. Value must be between 1 and 100.
    * `cursor`: The cursor used for pagination. Required if you want to see the next or previous page of results.

  """
  @spec get_balance_accounts_balance_account_id_recurring_top_ups(
          balanceAccountId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.RecurringTopUpsResult.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_balance_account_id_recurring_top_ups(balanceAccountId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:cursor, :limit])

    client.request(%{
      args: [balanceAccountId: balanceAccountId],
      call:
        {Adyen.BalancePlatform.V2.RecurringTopUps,
         :get_balance_accounts_balance_account_id_recurring_top_ups},
      url: "/balanceAccounts/#{balanceAccountId}/recurringTopUps",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.RecurringTopUpsResult, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a RecurringTopUp

  Update the configuration of an existing recurring top up.

  For more information, refer to [Manage recurring top-ups](https://docs.adyen.com/issuing/add-manage-funds/top-ups/manage-recurring-top-ups).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_balance_accounts_balance_account_id_recurring_top_ups_top_up_id(
          balanceAccountId :: String.t(),
          topUpId :: String.t(),
          body :: Adyen.BalancePlatform.V2.PatchableCreateRecurringTopUp.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.RecurringTopUp.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def patch_balance_accounts_balance_account_id_recurring_top_ups_top_up_id(
        balanceAccountId,
        topUpId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, topUpId: topUpId, body: body],
      call:
        {Adyen.BalancePlatform.V2.RecurringTopUps,
         :patch_balance_accounts_balance_account_id_recurring_top_ups_top_up_id},
      url: "/balanceAccounts/#{balanceAccountId}/recurringTopUps/#{topUpId}",
      body: body,
      method: :patch,
      request: [
        {"application/json", {Adyen.BalancePlatform.V2.PatchableCreateRecurringTopUp, :t}}
      ],
      response: [
        {200, {Adyen.BalancePlatform.V2.RecurringTopUp, :t}},
        {400, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create recurring top up

  Create a recurring top up configuration.

  For more information, refer to [Create recurring top-ups](https://docs.adyen.com/issuing/add-manage-funds/top-ups/create-recurring-top-ups).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts_balance_account_id_recurring_top_ups(
          balanceAccountId :: String.t(),
          body :: Adyen.BalancePlatform.V2.CreateRecurringTopUp.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V2.RecurringTopUp.t()}
          | {:error, Adyen.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def post_balance_accounts_balance_account_id_recurring_top_ups(
        balanceAccountId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [balanceAccountId: balanceAccountId, body: body],
      call:
        {Adyen.BalancePlatform.V2.RecurringTopUps,
         :post_balance_accounts_balance_account_id_recurring_top_ups},
      url: "/balanceAccounts/#{balanceAccountId}/recurringTopUps",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V2.CreateRecurringTopUp, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V2.RecurringTopUp, :t}},
        {400, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
