defmodule Adyen.BalancePlatform.V1.Documents do
  @moduledoc """
  Provides API endpoints related to documents
  """

  @default_client Adyen.Client

  @doc """
  Delete a document

  Deletes a document.
  """
  @spec delete_documents_id(id :: String.t(), opts :: keyword) ::
          {:ok, map} | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def delete_documents_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.Documents, :delete_documents_id},
      url: "/documents/#{id}",
      method: :delete,
      response: [
        {200, :map},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a document

  Returns a document.
  """
  @spec get_documents_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.Document.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def get_documents_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.Documents, :get_documents_id},
      url: "/documents/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.Document, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a document

  Updates a document.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_documents_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V1.Document.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.Document.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def patch_documents_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V1.Documents, :patch_documents_id},
      url: "/documents/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V1.Document, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.Document, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Upload a document for verification checks

  Uploads a document for verification checks.

   Adyen uses the information from the [legal entity](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/legalEntities) to run automated verification checks. If these checks fail, you will be notified to provide additional documents.

   You should only upload documents when Adyen requests additional information for the legal entity. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_documents(body :: Adyen.BalancePlatform.V1.Document.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.Document.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def post_documents(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.Documents, :post_documents},
      url: "/documents",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.Document, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.Document, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
