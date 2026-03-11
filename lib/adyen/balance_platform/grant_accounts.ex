defmodule Adyen.BalancePlatform.GrantAccounts do
  @moduledoc """
  Provides API endpoint related to grant accounts
  """

  @default_client Adyen.Client

  @doc """
  Get a grant account

  Returns the details of the [grant account](https://docs.adyen.com/platforms/capital#grant-account).
  """
  @spec get_grant_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.CapitalGrantAccount.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_grant_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.GrantAccounts, :get_grant_accounts_id},
      url: "/grantAccounts/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.CapitalGrantAccount, :t}},
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
