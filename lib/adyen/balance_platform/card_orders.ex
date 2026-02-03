defmodule Adyen.BalancePlatform.CardOrders do
  @moduledoc """
  Provides API endpoints related to card orders
  """

  alias Adyen.BalancePlatform.CardOrders
  alias Adyen.BalancePlatform.PaginatedGetCardOrderItemResponse
  alias Adyen.BalancePlatform.PaginatedGetCardOrderResponse
  alias Adyen.BalancePlatform.RestServiceError

  @default_client Adyen.Client

  @doc """
  Get a list of card orders

  Returns a paginated list of card orders.

  ## Options

    * `id`: The unique identifier of the card order. 
    * `cardManufacturingProfileId`: The unique identifier of the card manufacturer profile.
    * `status`: The status of the card order.
    * `txVariantCode`: The unique code of the card manufacturer profile.
      
      Possible values: **mcmaestro**, **mc**, **visa**, **mcdebit**. 
    * `createdSince`: Only include card orders that have been created on or after this point in time. The value must be in ISO 8601 format. For example, **2021-05-30T15:07:40Z**.
    * `createdUntil`: Only include card orders that have been created on or before this point in time. The value must be in ISO 8601 format. For example, **2021-05-30T15:07:40Z**.
    * `lockedSince`: Only include card orders that have been locked on or after this point in time. The value must be in ISO 8601 format. For example, **2021-05-30T15:07:40Z**.
    * `lockedUntil`: Only include card orders that have been locked on or before this point in time. The value must be in ISO 8601 format. For example, **2021-05-30T15:07:40Z**.
    * `serviceCenter`: The service center at which the card is issued. The value is case-sensitive. 
    * `offset`: Specifies the position of an element in a list of card orders. The response includes a list of card orders that starts at the specified offset.
      
      **Default:** 0, which means that the response contains all the elements in the list of card orders.
    * `limit`: The number of card orders returned per page. **Default:** 10.

  """
  @spec get_cardorders(opts :: keyword) ::
          {:ok, PaginatedGetCardOrderResponse.t()}
          | {:error, RestServiceError.t()}
  def get_cardorders(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :cardManufacturingProfileId,
        :createdSince,
        :createdUntil,
        :id,
        :limit,
        :lockedSince,
        :lockedUntil,
        :offset,
        :serviceCenter,
        :status,
        :txVariantCode
      ])

    client.request(%{
      args: [],
      call: {CardOrders, :get_cardorders},
      url: "/cardorders",
      method: :get,
      query: query,
      response: [
        {200, {PaginatedGetCardOrderResponse, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get card order items

  Returns the item list of a specific card order.

  ## Options

    * `offset`: Specifies the position of an element in a list of card orders. The response includes a list of card order items that starts at the specified offset.
      
      **Default:** 0, which means that the response contains all the elements in the list of card order items.
    * `limit`: The number of card order items returned per page. **Default:** 10.

  """
  @spec get_cardorder_items(id :: String.t(), opts :: keyword) ::
          {:ok, PaginatedGetCardOrderItemResponse.t()}
          | {:error, RestServiceError.t()}
  def get_cardorder_items(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {CardOrders, :get_cardorder_items},
      url: "/cardorders/#{id}/items",
      method: :get,
      query: query,
      response: [
        {200, {PaginatedGetCardOrderItemResponse, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
