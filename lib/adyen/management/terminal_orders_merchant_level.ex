defmodule Adyen.Management.TerminalOrdersMerchantLevel do
  @moduledoc """
  Provides API endpoints related to terminal orders merchant level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of billing entities

  Returns the billing entities of the merchant account identified in the path.
  A billing entity is a legal entity where we charge orders to. An order for terminal products must contain the ID of a billing entity.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `name`: The name of the billing entity.

  """
  @spec get_merchants_merchant_id_billing_entities(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.BillingEntitiesResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_billing_entities(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:name])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :get_merchants_merchant_id_billing_entities},
      url: "/merchants/#{merchantId}/billingEntities",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.BillingEntitiesResponse, :t}},
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
  Get a list of shipping locations

  Returns the shipping locations for the merchant account identified in the path.
  A shipping location includes the address where orders can be delivered, and an ID which you need to specify when ordering terminal products.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `name`: The name of the shipping location.
    * `offset`: The number of locations to skip.
    * `limit`: The number of locations to return.

  """
  @spec get_merchants_merchant_id_shipping_locations(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.ShippingLocationsResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_shipping_locations(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :name, :offset])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :get_merchants_merchant_id_shipping_locations},
      url: "/merchants/#{merchantId}/shippingLocations",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.ShippingLocationsResponse, :t}},
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
  Get a list of terminal models

  Returns the payment terminal models that the merchant account identified in the path has access to. The response includes the terminal model ID, which can be used as a query parameter when getting a list of terminals or a list of products for ordering.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_merchants_merchant_id_terminal_models(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.TerminalModelsResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_terminal_models(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel, :get_merchants_merchant_id_terminal_models},
      url: "/merchants/#{merchantId}/terminalModels",
      method: :get,
      response: [
        {200, {Adyen.Management.TerminalModelsResponse, :t}},
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
  Get a list of orders

  Returns a list of terminal products orders for the merchant account identified in the path.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `customerOrderReference`: Your purchase order number.
    * `status`: The order status. Possible values (not case-sensitive): Placed, Confirmed, Cancelled, Shipped, Delivered.
    * `offset`: The number of orders to skip.
    * `limit`: The number of orders to return.

  """
  @spec get_merchants_merchant_id_terminal_orders(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.TerminalOrdersResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_terminal_orders(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:customerOrderReference, :limit, :offset, :status])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel, :get_merchants_merchant_id_terminal_orders},
      url: "/merchants/#{merchantId}/terminalOrders",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.TerminalOrdersResponse, :t}},
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
  Get an order

  Returns the details of the terminal products order identified in the path.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_merchants_merchant_id_terminal_orders_order_id(
          merchantId :: String.t(),
          orderId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.TerminalOrder.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_terminal_orders_order_id(merchantId, orderId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, orderId: orderId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :get_merchants_merchant_id_terminal_orders_order_id},
      url: "/merchants/#{merchantId}/terminalOrders/#{orderId}",
      method: :get,
      response: [
        {200, {Adyen.Management.TerminalOrder, :t}},
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
  Get a list of terminal products

  Returns a country-specific list of payment terminal packages and parts that the merchant account identified in the path has access to.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `country`: The country to return products for, in [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) format. For example, **US**
    * `terminalModelId`: The terminal model to return products for. Use the ID returned in the [GET `/terminalModels`](https://docs.adyen.com/api-explorer/#/ManagementService/latest/get/merchants/{merchantId}/terminalModels) response. For example, **Verifone.M400**
    * `offset`: The number of products to skip.
    * `limit`: The number of products to return.

  """
  @spec get_merchants_merchant_id_terminal_products(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.TerminalProductsResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_terminal_products(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:country, :limit, :offset, :terminalModelId])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :get_merchants_merchant_id_terminal_products},
      url: "/merchants/#{merchantId}/terminalProducts",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.TerminalProductsResponse, :t}},
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
  Update an order

  Updates the terminal products order identified in the path.
  Updating is only possible while the order has the status **Placed**.

  The request body only needs to contain what you want to change. 
  However, to update the products in the `items` array, you must provide the entire array. For example, if the array has three items:
   To remove one item, the array must include the remaining two items. Or to add one item, the array must include all four items.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_terminal_orders_order_id(
          merchantId :: String.t(),
          orderId :: String.t(),
          body :: Adyen.Management.TerminalOrderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.TerminalOrder.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_terminal_orders_order_id(merchantId, orderId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, orderId: orderId, body: body],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :patch_merchants_merchant_id_terminal_orders_order_id},
      url: "/merchants/#{merchantId}/terminalOrders/#{orderId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.TerminalOrderRequest, :t}}],
      response: [
        {200, {Adyen.Management.TerminalOrder, :t}},
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
  Create a shipping location

  Creates a shipping location for the merchant account identified in the path. A shipping location defines an address where orders can be shipped to. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_shipping_locations(
          merchantId :: String.t(),
          body :: Adyen.Management.ShippingLocation.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.ShippingLocation.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_shipping_locations(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :post_merchants_merchant_id_shipping_locations},
      url: "/merchants/#{merchantId}/shippingLocations",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.ShippingLocation, :t}}],
      response: [
        {200, {Adyen.Management.ShippingLocation, :t}},
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
  Create an order

  Creates an order for payment terminal products for the merchant account identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read and write
  >Requests to the Management API test endpoint do not create actual orders for test terminals. To order test terminals, you need to [submit a sales order](https://docs.adyen.com/point-of-sale/managing-terminals/order-terminals/#sales-order-steps) in your Customer Area.

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_terminal_orders(
          merchantId :: String.t(),
          body :: Adyen.Management.TerminalOrderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.TerminalOrder.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_terminal_orders(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :post_merchants_merchant_id_terminal_orders},
      url: "/merchants/#{merchantId}/terminalOrders",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.TerminalOrderRequest, :t}}],
      response: [
        {200, {Adyen.Management.TerminalOrder, :t}},
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
  Cancel an order

  Cancels the terminal products order identified in the path.
  Cancelling is only possible while the order has the status **Placed**.
  To cancel an order, make a POST call without a request body. The response returns the full order details, but with the status changed to **Cancelled**.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Terminal ordering read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec post_merchants_merchant_id_terminal_orders_order_id_cancel(
          merchantId :: String.t(),
          orderId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.TerminalOrder.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_terminal_orders_order_id_cancel(merchantId, orderId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, orderId: orderId],
      call:
        {Adyen.Management.TerminalOrdersMerchantLevel,
         :post_merchants_merchant_id_terminal_orders_order_id_cancel},
      url: "/merchants/#{merchantId}/terminalOrders/#{orderId}/cancel",
      method: :post,
      response: [
        {200, {Adyen.Management.TerminalOrder, :t}},
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
