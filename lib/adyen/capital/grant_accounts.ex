defmodule Adyen.Capital.GrantAccounts do
  @moduledoc """
  Provides API endpoint related to grant accounts
  """

  @default_client Adyen.Client

  @doc """
  Get the information of your grant account

  Returns the details of the specified grant account. This account tracks existing grants in your marketplace or platform.
  """
  @spec get_grant_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Capital.GrantAccount.t()}
          | {:error, Adyen.Capital.DefaultErrorResponseEntity.t()}
  def get_grant_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.Capital.GrantAccounts, :get_grant_accounts_id},
      url: "/grantAccounts/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Capital.GrantAccount, :t}},
        {404, {Adyen.Capital.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
