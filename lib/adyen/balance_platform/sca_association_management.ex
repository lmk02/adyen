defmodule Adyen.BalancePlatform.SCAAssociationManagement do
  @moduledoc """
  Provides API endpoints related to sca association management
  """

  alias Adyen.BalancePlatform.ApproveAssociationRequest
  alias Adyen.BalancePlatform.ApproveAssociationResponse
  alias Adyen.BalancePlatform.DefaultErrorResponseEntity
  alias Adyen.BalancePlatform.ListAssociationsResponse
  alias Adyen.BalancePlatform.RemoveAssociationRequest
  alias Adyen.BalancePlatform.SCAAssociationManagement

  @default_client Adyen.Client

  @doc """
  Delete association to devices

  Deletes one or more SCA associations for a device.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec delete_sca_associations(
          body :: RemoveAssociationRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, DefaultErrorResponseEntity.t()}
  def delete_sca_associations(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {SCAAssociationManagement, :delete_sca_associations},
      url: "/scaAssociations",
      body: body,
      method: :delete,
      request: [{"application/json", {RemoveAssociationRequest, :t}}],
      response: [
        {204, :null},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of devices associated with an entity

  Returns a paginated list of the SCA devices associated with a specific entity.

  ## Options

    * `entityType`: The type of entity you want to retrieve a list of associations for. 
      
      Possible values: **accountHolder** or **paymentInstrument**.
    * `entityId`: The unique identifier of the entity.
    * `pageSize`: The number of items to have on a page. 
      
      Default: **5**.
    * `pageNumber`: The index of the page to retrieve. The index of the first page is **0** (zero). 
      
      Default:  **0**.

  """
  @spec get_sca_associations(opts :: keyword) ::
          {:ok, ListAssociationsResponse.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def get_sca_associations(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:entityId, :entityType, :pageNumber, :pageSize])

    client.request(%{
      args: [],
      call: {SCAAssociationManagement, :get_sca_associations},
      url: "/scaAssociations",
      method: :get,
      query: query,
      response: [
        {200, {ListAssociationsResponse, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Approve a pending approval association

  Approves a previously created association that is in a pending state.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_sca_associations(
          body :: ApproveAssociationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, ApproveAssociationResponse.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def update_sca_associations(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {SCAAssociationManagement, :update_sca_associations},
      url: "/scaAssociations",
      body: body,
      method: :patch,
      request: [{"application/json", {ApproveAssociationRequest, :t}}],
      response: [
        {200, {ApproveAssociationResponse, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
