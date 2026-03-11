defmodule Adyen.LegalEntity.V2.Documents do
  @moduledoc """
  Provides API endpoints related to documents
  """

  @default_client Adyen.Client

  @doc """
  Delete a document

  Deletes a document.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec delete_documents_id(id :: String.t(), opts :: keyword) ::
          :ok | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def delete_documents_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V2.Documents, :delete_documents_id},
      url: "/documents/#{id}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a document

  Returns a document.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Options

    * `skipContent`: Do not load document content while fetching the document.

  """
  @spec get_documents_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V2.Document.t()}
          | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def get_documents_id(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:skipContent])

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V2.Documents, :get_documents_id},
      url: "/documents/#{id}",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.LegalEntity.V2.Document, :t}},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a document

  Updates a document.

   >You can upload a maximum of 15 pages for photo IDs.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_documents_id(
          id :: String.t(),
          body :: Adyen.LegalEntity.V2.Document.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.V2.Document.t()}
          | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def patch_documents_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.LegalEntity.V2.Documents, :patch_documents_id},
      url: "/documents/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.LegalEntity.V2.Document, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V2.Document, :t}},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Upload a document for verification checks

  Uploads a document for verification checks.

   Adyen uses the information from the [legal entity](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/legalEntities) to run automated verification checks. If these checks fail, you will be notified to provide additional documents.

   You should only upload documents when Adyen requests additional information for the legal entity.

   >You can upload a maximum of 15 pages for photo IDs.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_documents(body :: Adyen.LegalEntity.V2.Document.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V2.Document.t()}
          | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def post_documents(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.LegalEntity.V2.Documents, :post_documents},
      url: "/documents",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.V2.Document, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V2.Document, :t}},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
