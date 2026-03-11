defmodule Adyen.Accounts.AccountHolders do
  @moduledoc """
  Provides API endpoints related to account holders
  """

  @default_client Adyen.Client

  @doc """
  Close an account holder

  Changes the [status of an account holder](https://docs.adyen.com/classic-platforms/account-holders-and-accounts#account-holder-statuses) to **Closed**. This state is final. If an account holder is closed, you can't process transactions, pay out funds, or reopen it. If payments are made to an account of an account holder with a **Closed** [`status`](https://docs.adyen.com/api-explorer/#/Account/latest/post/getAccountHolder__resParam_verification-accountHolder-checks-status), the payments are sent to your liable account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_close_account_holder(
          body :: Adyen.Accounts.CloseAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.CloseAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_close_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_close_account_holder},
      url: "/closeAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.CloseAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.CloseAccountHolderResponse, :t}},
        {202, {Adyen.Accounts.CloseAccountHolderResponse, :t}},
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
  Close stores

  Closes stores associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_close_stores(body :: Adyen.Accounts.CloseStoresRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_close_stores(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_close_stores},
      url: "/closeStores",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.CloseStoresRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
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
  Create an account holder

  Creates an account holder that [represents the sub-merchant's entity](https://docs.adyen.com/classic-platforms/account-structure#your-platform) in your platform. The details that you need to provide in the request depend on the sub-merchant's legal entity type. For more information, refer to [Account holder and accounts](https://docs.adyen.com/classic-platforms/account-holders-and-accounts#legal-entity-types).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_account_holder(
          body :: Adyen.Accounts.CreateAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.CreateAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_create_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_create_account_holder},
      url: "/createAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.CreateAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.CreateAccountHolderResponse, :t}},
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
  Get an account holder

  Returns the details of an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_account_holder(
          body :: Adyen.Accounts.GetAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.GetAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_get_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_get_account_holder},
      url: "/getAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.GetAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GetAccountHolderResponse, :t}},
        {202, {Adyen.Accounts.GetAccountHolderResponse, :t}},
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
  Get a tax form

  Generates a tax form for account holders operating in the US. For more information, refer to [Providing tax forms](https://docs.adyen.com/classic-platforms/tax-forms).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_tax_form(body :: Adyen.Accounts.GetTaxFormRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Accounts.GetTaxFormResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_get_tax_form(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_get_tax_form},
      url: "/getTaxForm",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.GetTaxFormRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GetTaxFormResponse, :t}},
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
  Suspend an account holder

  Changes the [status of an account holder](https://docs.adyen.com/classic-platforms/account-holders-and-accounts#account-holder-statuses) to **Suspended**.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_suspend_account_holder(
          body :: Adyen.Accounts.SuspendAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.SuspendAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_suspend_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_suspend_account_holder},
      url: "/suspendAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.SuspendAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.SuspendAccountHolderResponse, :t}},
        {202, {Adyen.Accounts.SuspendAccountHolderResponse, :t}},
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
  Unsuspend an account holder

  Changes the [status of an account holder](https://docs.adyen.com/classic-platforms/account-holders-and-accounts#account-holder-statuses) from **Suspended** to **Inactive**. 
  Account holders can have a **Suspended** [`status`](https://docs.adyen.com/api-explorer/#/Account/latest/post/getAccountHolder__resParam_verification-accountHolder-checks-status) if you suspend them through the [`/suspendAccountHolder`](https://docs.adyen.com/api-explorer/#/Account/v5/post/suspendAccountHolder) endpoint or if a verification deadline expires.

  You can only unsuspend account holders if they do not have verification checks with a **FAILED** [`status`](https://docs.adyen.com/api-explorer/#/Account/latest/post/getAccountHolder__resParam_verification-accountHolder-checks-status).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_un_suspend_account_holder(
          body :: Adyen.Accounts.UnSuspendAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.UnSuspendAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_un_suspend_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_un_suspend_account_holder},
      url: "/unSuspendAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.UnSuspendAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.UnSuspendAccountHolderResponse, :t}},
        {202, {Adyen.Accounts.UnSuspendAccountHolderResponse, :t}},
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
  Update an account holder

  Updates the `accountHolderDetails` and `processingTier` of an account holder, and adds bank accounts and shareholders.

  When updating `accountHolderDetails`, parameters that are not included in the request are left unchanged except for the following object:

  * `metadata`: Updating the metadata replaces the entire object. This means that to update an existing key-value pair, you must provide the changes, as well as other existing key-value pairs.

  When updating any field in the following objects, you must submit all the fields required for validation:

   * `address`

  * `fullPhoneNumber`

  * `bankAccountDetails.BankAccountDetail`

  * `businessDetails.shareholders.ShareholderContact`

   For example, to update the `address.postalCode`, you must also submit the `address.country`, `.city`, `.street`, `.postalCode`, and possibly `.stateOrProvince` so that the address can be validated.

  To add a bank account or shareholder, provide the bank account or shareholder details without a `bankAccountUUID` or a `shareholderCode`.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_update_account_holder(
          body :: Adyen.Accounts.UpdateAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.UpdateAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_update_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_update_account_holder},
      url: "/updateAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.UpdateAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.UpdateAccountHolderResponse, :t}},
        {202, {Adyen.Accounts.UpdateAccountHolderResponse, :t}},
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
  Update payout or processing state

  Disables or enables the processing or payout state of an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_update_account_holder_state(
          body :: Adyen.Accounts.UpdateAccountHolderStateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.GetAccountHolderStatusResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_update_account_holder_state(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.AccountHolders, :post_update_account_holder_state},
      url: "/updateAccountHolderState",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.UpdateAccountHolderStateRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GetAccountHolderStatusResponse, :t}},
        {202, {Adyen.Accounts.GetAccountHolderStatusResponse, :t}},
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
