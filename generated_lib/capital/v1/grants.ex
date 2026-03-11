defmodule Adyen.Capital.V1.Grants do
  @moduledoc """
  Provides API endpoints related to grants
  """

  @default_client Adyen.Client

  @doc """
  Get all the grants of an account holder

  Returns a list of all the grants of a specific account holder.

  ## Options

    * `counterpartyAccountHolderId`: The unique identifier of the account holder that received the grants.

  """
  @spec get_grants(opts :: keyword) ::
          {:ok, Adyen.Capital.V1.Grants.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grants(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:counterpartyAccountHolderId])

    client.request(%{
      args: [],
      call: {Adyen.Capital.V1.Grants, :get_grants},
      url: "/grants",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Capital.V1.Grants, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the details of a grant

  Returns the details of the specified grant.
  """
  @spec get_grants_grant_id(grantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Capital.V1.Grant.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grants_grant_id(grantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [grantId: grantId],
      call: {Adyen.Capital.V1.Grants, :get_grants_grant_id},
      url: "/grants/#{grantId}",
      method: :get,
      response: [
        {200, {Adyen.Capital.V1.Grant, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all the disbursements of a grant

  Returns the disbursements of a specified grant.
  """
  @spec get_grants_grant_id_disbursements(grantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Capital.V1.Disbursements.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grants_grant_id_disbursements(grantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [grantId: grantId],
      call: {Adyen.Capital.V1.Grants, :get_grants_grant_id_disbursements},
      url: "/grants/#{grantId}/disbursements",
      method: :get,
      response: [
        {200, {Adyen.Capital.V1.Disbursements, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get disbursement details

  Returns the details of a disbursement specified in the path.
  """
  @spec get_grants_grant_id_disbursements_disbursement_id(
          grantId :: String.t(),
          disbursementId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Capital.V1.Disbursement.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grants_grant_id_disbursements_disbursement_id(grantId, disbursementId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [grantId: grantId, disbursementId: disbursementId],
      call: {Adyen.Capital.V1.Grants, :get_grants_grant_id_disbursements_disbursement_id},
      url: "/grants/#{grantId}/disbursements/#{disbursementId}",
      method: :get,
      response: [
        {200, {Adyen.Capital.V1.Disbursement, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the repayment configuration of a disbursement

  Update the percentage of your user's net income that is deducted for repaying the grant.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_grants_grant_id_disbursements_disbursement_id(
          grantId :: String.t(),
          disbursementId :: String.t(),
          body :: Adyen.Capital.V1.DisbursementInfoUpdate.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Capital.V1.Disbursement.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def patch_grants_grant_id_disbursements_disbursement_id(
        grantId,
        disbursementId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [grantId: grantId, disbursementId: disbursementId, body: body],
      call: {Adyen.Capital.V1.Grants, :patch_grants_grant_id_disbursements_disbursement_id},
      url: "/grants/#{grantId}/disbursements/#{disbursementId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Capital.V1.DisbursementInfoUpdate, :t}}],
      response: [
        {200, {Adyen.Capital.V1.Disbursement, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Make a request for a grant

  Make a request for a grant on behalf of an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_grants(body :: Adyen.Capital.V1.GrantInfo.t(), opts :: keyword) ::
          {:ok, Adyen.Capital.V1.Grant.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def post_grants(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Capital.V1.Grants, :post_grants},
      url: "/grants",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Capital.V1.GrantInfo, :t}}],
      response: [
        {200, {Adyen.Capital.V1.Grant, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{grants: [Adyen.Capital.V1.Grant.t()]}

  defstruct [:grants]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [grants: [{Adyen.Capital.V1.Grant, :t}]]
  end
end
