defmodule Adyen.DocumentCollector.V1.Documents do
  @moduledoc """
  Provides API endpoint related to documents
  """

  @default_client Adyen.Client

  @doc """
  Upload a document

  Uploads a document for a merchant account.

  ## Request Body

  **Content Types**: `multipart/form-data`
  """
  @spec post_cross_border_invoices(body :: map, opts :: keyword) ::
          {:ok, Adyen.DocumentCollector.V1.DocumentUploadResponse.t()}
          | {:error, Adyen.DocumentCollector.V1.DefaultErrorResponseEntity.t()}
  def post_cross_border_invoices(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.DocumentCollector.V1.Documents, :post_cross_border_invoices},
      url: "/crossBorderInvoices",
      body: body,
      method: :post,
      request: [{"multipart/form-data", :map}],
      response: [
        {201, {Adyen.DocumentCollector.V1.DocumentUploadResponse, :t}},
        {400, {Adyen.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.DocumentCollector.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
