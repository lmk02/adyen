defmodule Adyen.Transaction.V4.RaiseDisputes do
  @moduledoc """
  Provides API endpoints related to raise disputes
  """

  @default_client Adyen.Client

  @doc """
  Get a list of raised disputes

  Returns a list of raised disputes that match the query parameters.

  This endpoint supports cursor-based pagination. The response returns the first page of results, and returns links to the next page when applicable. You can use the links to page through the results. The response also returns links to the previous page when applicable.

  ## Options

    * `status`: The current status of the dispute.
      
      Possible values: **draft**, **submitted**, **closed**, **won**, **chargeback**, **secondPresentment**.
    * `paymentInstrument`: The unique identifier of the payment instrument.
    * `createdSince`: Only include disputes that have been created on or after this point in time. The value must be in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601\)  format. For example, 2021-05-30T15:07:40Z.
    * `createdUntil`: Only include disputes that have been created on or before this point in time. The value must be in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601\) format. For example, **2021-05-30T15:07:40Z**.
    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum of 500 items. By default, the response returns 100 items per page.

  """
  @spec get_disputes(opts :: keyword) ::
          {:ok, [[Adyen.Transaction.V4.DisputeResponse.t()]]}
          | {:error, Adyen.Transaction.V4.DefaultErrorResponseEntity.t()}
  def get_disputes(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :createdSince,
        :createdUntil,
        :limit,
        :offset,
        :paymentInstrument,
        :status
      ])

    client.request(%{
      args: [],
      call: {Adyen.Transaction.V4.RaiseDisputes, :get_disputes},
      url: "/disputes",
      method: :get,
      query: query,
      response: [
        {200, [[{Adyen.Transaction.V4.DisputeResponse, :t}]]},
        {401, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get dispute by ID

  Get a raised dispute by ID.
  """
  @spec get_disputes_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Transaction.V4.DisputeResponse.t()}
          | {:error, Adyen.Transaction.V4.DefaultErrorResponseEntity.t()}
  def get_disputes_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.Transaction.V4.RaiseDisputes, :get_disputes_id},
      url: "/disputes/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Transaction.V4.DisputeResponse, :t}},
        {401, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a raised dispute

  Update information related to a raised dispute, or change a dispute's status from **draft** to **submitted** or **closed**.

  **Note:** Changing the status of a dispute to **submitted** or **closed** is a final action. You cannot make updates to a **submitted** or **closed** dispute. Make sure to upload all supporting attachments using the `POST /disputes/{id}/attachments` endpoint before you submit a dispute. When you update a dispute to **submitted**, Adyen sends the raised dispute to the card scheme for review and acquirer defense. When you update a raised dispute to **closed**, Adyen closes the dispute, and the dispute is no longer eligible for review by the card scheme.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_disputes_id(
          id :: String.t(),
          body :: Adyen.Transaction.V4.PatchableDisputeRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Transaction.V4.DisputeResponse.t()}
          | {:error, Adyen.Transaction.V4.DefaultErrorResponseEntity.t()}
  def patch_disputes_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.Transaction.V4.RaiseDisputes, :patch_disputes_id},
      url: "/disputes/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Transaction.V4.PatchableDisputeRequest, :t}}],
      response: [
        {200, {Adyen.Transaction.V4.DisputeResponse, :t}},
        {401, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Raise a dispute

  Raise a dispute for an underlying transaction, providing a dispute type and the amount you want to dispute.

  Raising a dispute returns a dispute ID, which you can use to update details about the dispute, provide supporting documentation, close the dispute, or submit the dispute for a chargeback. You can also use the dispute ID to view the status of the dispute.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disputes(body :: Adyen.Transaction.V4.DisputeRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Transaction.V4.DisputeResponse.t()}
          | {:error, Adyen.Transaction.V4.DefaultErrorResponseEntity.t()}
  def post_disputes(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transaction.V4.RaiseDisputes, :post_disputes},
      url: "/disputes",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transaction.V4.DisputeRequest, :t}}],
      response: [
        {200, {Adyen.Transaction.V4.DisputeResponse, :t}},
        {401, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transaction.V4.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
