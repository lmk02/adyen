defmodule Adyen.Management.UsersMerchantLevel do
  @moduledoc """
  Provides API endpoints related to users merchant level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of users

  Returns a list of users associated with the `merchantId` specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page. Maximum value is **100**. The default is **10** items on a page.
    * `username`: The partial or complete username to select all users that match.

  """
  @spec get_merchants_merchant_id_users(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.ListMerchantUsersResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_users(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :username])

    client.request(%{
      args: [merchantId: merchantId],
      call: {Adyen.Management.UsersMerchantLevel, :get_merchants_merchant_id_users},
      url: "/merchants/#{merchantId}/users",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.ListMerchantUsersResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get user details

  Returns user details for the `userId` and the `merchantId` specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  """
  @spec get_merchants_merchant_id_users_user_id(
          merchantId :: String.t(),
          userId :: String.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.User.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_users_user_id(merchantId, userId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, userId: userId],
      call: {Adyen.Management.UsersMerchantLevel, :get_merchants_merchant_id_users_user_id},
      url: "/merchants/#{merchantId}/users/#{userId}",
      method: :get,
      response: [
        {200, {Adyen.Management.User, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a user

  Updates user details for the `userId` and the `merchantId` specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_users_user_id(
          merchantId :: String.t(),
          userId :: String.t(),
          body :: Adyen.Management.UpdateMerchantUserRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Management.User.t()} | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_users_user_id(merchantId, userId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, userId: userId, body: body],
      call: {Adyen.Management.UsersMerchantLevel, :patch_merchants_merchant_id_users_user_id},
      url: "/merchants/#{merchantId}/users/#{userId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateMerchantUserRequest, :t}}],
      response: [
        {200, {Adyen.Management.User, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a new user

  Creates a user for the `merchantId` specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_users(
          merchantId :: String.t(),
          body :: Adyen.Management.CreateMerchantUserRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.CreateUserResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_users(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call: {Adyen.Management.UsersMerchantLevel, :post_merchants_merchant_id_users},
      url: "/merchants/#{merchantId}/users",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.CreateMerchantUserRequest, :t}}],
      response: [
        {200, {Adyen.Management.CreateUserResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
