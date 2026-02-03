defmodule Adyen.BalancePlatform.GrantAccounts do
  @moduledoc """
  Provides API endpoint related to grant accounts
  """

  alias Adyen.BalancePlatform.CapitalGrantAccount
  alias Adyen.BalancePlatform.RestServiceError

  @default_client Adyen.Client

  @doc """
  Get a grant account

  Returns the details of the [grant account](https://docs.adyen.com/platforms/capital#grant-account).
  """
  @spec get_grant_account(id :: String.t(), opts :: keyword) ::
          {:ok, CapitalGrantAccount.t()}
          | {:error, RestServiceError.t()}
  def get_grant_account(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.GrantAccounts, :get_grant_account},
      url: "/grantAccounts/#{id}",
      method: :get,
      response: [
        {200, {CapitalGrantAccount, :t}},
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
