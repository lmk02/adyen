defmodule Adyen.Transaction.V1.DisputeAttachments do
  @moduledoc """
  Provides API endpoints related to dispute attachments
  """

  @default_client Adyen.Client

  @doc """
  Delete attachment from a dispute

  Removes the attachment from the raised dispute. Adyen may keep this file for compliance purposes.
  """
  @spec delete_disputes_dispute_id_attachments_attachment_id(
          disputeId :: String.t(),
          attachmentId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Transaction.V1.DefaultErrorResponseEntity.t()}
  def delete_disputes_dispute_id_attachments_attachment_id(disputeId, attachmentId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId, attachmentId: attachmentId],
      call:
        {Adyen.Transaction.V1.DisputeAttachments,
         :delete_disputes_dispute_id_attachments_attachment_id},
      url: "/disputes/#{disputeId}/attachments/#{attachmentId}",
      method: :delete,
      response: [
        {204, :null},
        {401, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all attachments linked to a raised dispute

  Get a list of attachments associated with a dispute ID.
  """
  @spec get_disputes_dispute_id_attachments(disputeId :: String.t(), opts :: keyword) ::
          {:ok, [Adyen.Transaction.V1.DisputeAttachment.t()]}
          | {:error, Adyen.Transaction.V1.DefaultErrorResponseEntity.t()}
  def get_disputes_dispute_id_attachments(disputeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId],
      call: {Adyen.Transaction.V1.DisputeAttachments, :get_disputes_dispute_id_attachments},
      url: "/disputes/#{disputeId}/attachments",
      method: :get,
      response: [
        {200, [{Adyen.Transaction.V1.DisputeAttachment, :t}]},
        {401, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get an attachment

  Search for a single attachment, providing the specific dispute ID and attachment ID.
  """
  @spec get_disputes_dispute_id_attachments_attachment_id(
          disputeId :: String.t(),
          attachmentId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Transaction.V1.DisputeAttachment.t()}
          | {:error, Adyen.Transaction.V1.DefaultErrorResponseEntity.t()}
  def get_disputes_dispute_id_attachments_attachment_id(disputeId, attachmentId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId, attachmentId: attachmentId],
      call:
        {Adyen.Transaction.V1.DisputeAttachments,
         :get_disputes_dispute_id_attachments_attachment_id},
      url: "/disputes/#{disputeId}/attachments/#{attachmentId}",
      method: :get,
      response: [
        {200, {Adyen.Transaction.V1.DisputeAttachment, :t}},
        {401, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Add an attachment to a dispute

  Add supporting information as an attachment for the raised dispute. Upload receipts, communication, or any other documentation to support the dispute.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disputes_dispute_id_attachments(
          disputeId :: String.t(),
          body :: Adyen.Transaction.V1.DisputeAttachment.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Transaction.V1.AttachDocumentResponse.t()}
          | {:error, Adyen.Transaction.V1.DefaultErrorResponseEntity.t()}
  def post_disputes_dispute_id_attachments(disputeId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId, body: body],
      call: {Adyen.Transaction.V1.DisputeAttachments, :post_disputes_dispute_id_attachments},
      url: "/disputes/#{disputeId}/attachments",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transaction.V1.DisputeAttachment, :t}}],
      response: [
        {200, {Adyen.Transaction.V1.AttachDocumentResponse, :t}},
        {401, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
