defmodule Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel do
  @moduledoc """
  Provides API endpoints related to transfer limits balance account level
  """

  @default_client Adyen.Client

  @doc """
  Delete a scheduled or pending transfer limit

  Delete a scheduled or pending transfer limit using its unique `transferLimitId`. You cannot delete an active limit.

  """
  @spec delete_balance_accounts_id_transfer_limits_transfer_limit_id(
          id :: String.t(),
          transferLimitId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def delete_balance_accounts_id_transfer_limits_transfer_limit_id(
        id,
        transferLimitId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, transferLimitId: transferLimitId],
      call:
        {Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel,
         :delete_balance_accounts_id_transfer_limits_transfer_limit_id},
      url: "/balanceAccounts/#{id}/transferLimits/#{transferLimitId}",
      method: :delete,
      response: [
        {204, :null},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Filter and view the transfer limits

  Filter and view the transfer limits configured for a balance account using the balance account's unique `id` and the available query parameters.

  ## Options

    * `scope`: The scope to which the transfer limit applies. Possible values:
      * **perTransaction**: you set a maximum amount for each transfer made from the balance account or balance platform.
      * **perDay**: you set a maximum total amount for all transfers made from the balance account or balance platform in a day.
    * `transferType`: The type of transfer to which the limit applies. Possible values:
      * **instant**: the limit applies to transfers with an **instant** priority.
      * **all**: the limit applies to all transfers, regardless of priority.
    * `status`: The status of the transfer limit. Possible values:   
      * **active**: the limit is currently active.
      * **inactive**: the limit is currently inactive.
      * **pendingSCA**: the limit is pending until your user performs SCA.
      * **scheduled**: the limit is scheduled to become active at a future date.

  """
  @spec get_balance_accounts_id_transfer_limits(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.TransferLimitListResponse.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_id_transfer_limits(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:scope, :status, :transferType])

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel,
         :get_balance_accounts_id_transfer_limits},
      url: "/balanceAccounts/#{id}/transferLimits",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.TransferLimitListResponse, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all current transfer limits

  Get all transfer limits that currently apply to a balance account using the unique `id` of the balance account.

  ## Options

    * `scope`: The scope to which the transfer limit applies. Possible values:
      * **perTransaction**: you set a maximum amount for each transfer made from the balance account or balance platform.
      * **perDay**: you set a maximum total amount for all transfers made from the balance account or balance platform in a day.
    * `transferType`: The type of transfer to which the limit applies. Possible values:
      * **instant**: the limit applies to transfers with an **instant** priority.
      * **all**: the limit applies to all transfers, regardless of priority.

  """
  @spec get_balance_accounts_id_transfer_limits_current(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.TransferLimitListResponse.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_id_transfer_limits_current(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:scope, :transferType])

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel,
         :get_balance_accounts_id_transfer_limits_current},
      url: "/balanceAccounts/#{id}/transferLimits/current",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.TransferLimitListResponse, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the details of a transfer limit

  Get the details of a transfer limit using its unique `transferLimitId`.

  """
  @spec get_balance_accounts_id_transfer_limits_transfer_limit_id(
          id :: String.t(),
          transferLimitId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransferLimit.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def get_balance_accounts_id_transfer_limits_transfer_limit_id(id, transferLimitId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, transferLimitId: transferLimitId],
      call:
        {Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel,
         :get_balance_accounts_id_transfer_limits_transfer_limit_id},
      url: "/balanceAccounts/#{id}/transferLimits/#{transferLimitId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.TransferLimit, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a transfer limit

  Create a transfer limit for your balance account using the unique `id` of your balance account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts_id_transfer_limits(
          id :: String.t(),
          body :: Adyen.BalancePlatform.CreateTransferLimitRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransferLimit.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def post_balance_accounts_id_transfer_limits(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel,
         :post_balance_accounts_id_transfer_limits},
      url: "/balanceAccounts/#{id}/transferLimits",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.CreateTransferLimitRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.TransferLimit, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Approve pending transfer limits

  Approve transfer limits that are pending SCA authentication.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_accounts_id_transfer_limits_approve(
          id :: String.t(),
          body :: Adyen.BalancePlatform.ApproveTransferLimitRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def post_balance_accounts_id_transfer_limits_approve(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {Adyen.BalancePlatform.TransferLimitsBalanceAccountLevel,
         :post_balance_accounts_id_transfer_limits_approve},
      url: "/balanceAccounts/#{id}/transferLimits/approve",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.ApproveTransferLimitRequest, :t}}],
      response: [
        {204, :null},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
