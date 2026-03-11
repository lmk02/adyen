defmodule Adyen.Accounts.Accounts do
  @moduledoc """
  Provides API endpoints related to accounts
  """

  @default_client Adyen.Client

  @doc """
  Close an account

  Closes an account. If an account is closed, you cannot process transactions, pay out its funds, or reopen it. If payments are made to a closed account, the payments are sent to your liable account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_close_account(body :: Adyen.Accounts.CloseAccountRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Accounts.CloseAccountResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_close_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Accounts, :post_close_account},
      url: "/closeAccount",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.CloseAccountRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.CloseAccountResponse, :t}},
        {202, {Adyen.Accounts.CloseAccountResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create an account

  Creates an account under an account holder. An account holder can have [multiple accounts](https://docs.adyen.com/classic-platforms/account-holders-and-accounts#create-additional-accounts).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_account(body :: Adyen.Accounts.CreateAccountRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Accounts.CreateAccountResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_create_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Accounts, :post_create_account},
      url: "/createAccount",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.CreateAccountRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.CreateAccountResponse, :t}},
        {202, {Adyen.Accounts.CreateAccountResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update an account

  Updates the description or payout schedule of an account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_update_account(body :: Adyen.Accounts.UpdateAccountRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Accounts.UpdateAccountResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_update_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Accounts, :post_update_account},
      url: "/updateAccount",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.UpdateAccountRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.UpdateAccountResponse, :t}},
        {202, {Adyen.Accounts.UpdateAccountResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
