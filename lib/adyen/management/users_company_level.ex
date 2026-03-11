defmodule Adyen.Management.UsersCompanyLevel do
  @moduledoc """
  Provides API endpoints related to users company level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of users

  Returns the list of users for the `companyId` identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  ## Options

    * `pageNumber`: The number of the page to return.
    * `pageSize`: The number of items to have on a page. Maximum value is **100**. The default is **10** items on a page.
    * `username`: The partial or complete username to select all users that match.

  """
  @spec get_companies_company_id_users(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.ListCompanyUsersResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_companies_company_id_users(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :username])

    client.request(%{
      args: [companyId: companyId],
      call: {Adyen.Management.UsersCompanyLevel, :get_companies_company_id_users},
      url: "/companies/#{companyId}/users",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.ListCompanyUsersResponse, :t}},
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

  Returns user details for the `userId` and the `companyId` identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  """
  @spec get_companies_company_id_users_user_id(
          companyId :: String.t(),
          userId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.CompanyUser.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_companies_company_id_users_user_id(companyId, userId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, userId: userId],
      call: {Adyen.Management.UsersCompanyLevel, :get_companies_company_id_users_user_id},
      url: "/companies/#{companyId}/users/#{userId}",
      method: :get,
      response: [
        {200, {Adyen.Management.CompanyUser, :t}},
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
  Update user details

  Updates user details for the `userId` and the `companyId` identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_companies_company_id_users_user_id(
          companyId :: String.t(),
          userId :: String.t(),
          body :: Adyen.Management.UpdateCompanyUserRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.CompanyUser.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_companies_company_id_users_user_id(companyId, userId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, userId: userId, body: body],
      call: {Adyen.Management.UsersCompanyLevel, :patch_companies_company_id_users_user_id},
      url: "/companies/#{companyId}/users/#{userId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateCompanyUserRequest, :t}}],
      response: [
        {200, {Adyen.Management.CompanyUser, :t}},
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

  Creates the user for the `companyId` identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Users read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_companies_company_id_users(
          companyId :: String.t(),
          body :: Adyen.Management.CreateCompanyUserRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.CreateCompanyUserResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_companies_company_id_users(companyId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, body: body],
      call: {Adyen.Management.UsersCompanyLevel, :post_companies_company_id_users},
      url: "/companies/#{companyId}/users",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.CreateCompanyUserRequest, :t}}],
      response: [
        {200, {Adyen.Management.CreateCompanyUserResponse, :t}},
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
