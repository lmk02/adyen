defmodule Adyen.BalancePlatform.V2.GrantAccounts do
  @moduledoc """
  Provides API endpoint related to grant accounts
  """

  @default_client Adyen.Client

  @doc """
  Get a grant account

  Returns the details of the [grant account](https://docs.adyen.com/platforms/capital#grant-account).
  """
  @spec get_grant_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.CapitalGrantAccount.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_grant_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V2.GrantAccounts, :get_grant_accounts_id},
      url: "/grantAccounts/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.CapitalGrantAccount, :t}},
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
