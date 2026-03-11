defmodule Adyen.CloudDevice.V1.CloudEndpointsAndConnection do
  @moduledoc """
  Provides API endpoints related to cloud endpoints and connection
  """

  @default_client Adyen.Client

  @doc """
  Get a list of connected devices

  Get a list of payment terminals or SDK installation IDs (in a Mobile solution) belonging to the specified merchant account that have an active cloud connection.  The `store` query parameter limits the list of devices to those belonging to a specific store under the specified merchant account. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * **Cloud Device API role**

  ## Options

    * `store`: The store ID of the store belonging to the merchant account specified in the path. 

  """
  @spec get_merchants_merchant_account_connected_devices(
          merchantAccount :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.CloudDevice.V1.ConnectedDevicesResponse.t()}
          | {:error, Adyen.CloudDevice.V1.DefaultErrorResponseEntity.t()}
  def get_merchants_merchant_account_connected_devices(merchantAccount, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:store])

    client.request(%{
      args: [merchantAccount: merchantAccount],
      call:
        {Adyen.CloudDevice.V1.CloudEndpointsAndConnection,
         :get_merchants_merchant_account_connected_devices},
      url: "/merchants/#{merchantAccount}/connectedDevices",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.CloudDevice.V1.ConnectedDevicesResponse, :t}},
        {401, {Adyen.CloudDevice.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.CloudDevice.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the connection status of a device

  Check if the specified payment terminal or SDK installation ID (in an IPP Mobile solution) has an active cloud connection.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * **Cloud Device API role**
  """
  @spec get_merchants_merchant_account_devices_device_id_status(
          merchantAccount :: String.t(),
          deviceId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.CloudDevice.V1.DeviceStatusResponse.t()}
          | {:error, Adyen.CloudDevice.V1.DefaultErrorResponseEntity.t()}
  def get_merchants_merchant_account_devices_device_id_status(
        merchantAccount,
        deviceId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantAccount: merchantAccount, deviceId: deviceId],
      call:
        {Adyen.CloudDevice.V1.CloudEndpointsAndConnection,
         :get_merchants_merchant_account_devices_device_id_status},
      url: "/merchants/#{merchantAccount}/devices/#{deviceId}/status",
      method: :get,
      response: [
        {200, {Adyen.CloudDevice.V1.DeviceStatusResponse, :t}},
        {401, {Adyen.CloudDevice.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.CloudDevice.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Send a Terminal API request and receive an asynchronous response

  Sends a Terminal API request and receives the response asynchronously.

  The request body is a JSON object containing a Terminal API request. For the structure, see the various request types under [Terminal API](https://docs.adyen.com/api-explorer/terminal-api/1/overview).

  A HTTP status code of **200 OK** is returned when the payment device is online and our backend has sent the request. The actual Terminal API response is returned as an event notification webhook to your event notification endpoint. See [Receiving an asynchronous result](https://docs.adyen.com/point-of-sale/design-your-integration/choose-your-architecture/cloud/#async).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * **Cloud Device API role**

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_account_devices_device_id_async(
          merchantAccount :: String.t(),
          deviceId :: String.t(),
          body :: String.t(),
          opts :: keyword
        ) :: {:ok, String.t()} | :error
  def post_merchants_merchant_account_devices_device_id_async(
        merchantAccount,
        deviceId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantAccount: merchantAccount, deviceId: deviceId, body: body],
      call:
        {Adyen.CloudDevice.V1.CloudEndpointsAndConnection,
         :post_merchants_merchant_account_devices_device_id_async},
      url: "/merchants/#{merchantAccount}/devices/#{deviceId}/async",
      body: body,
      method: :post,
      request: [{"application/json", :string}],
      response: [{200, :string}],
      opts: opts
    })
  end

  @doc """
  Send a Terminal API request and receive a synchronous response

  Sends a Terminal API request and receives the response synchronously.

  The request body is a JSON object containing a Terminal API request. For the structure, see the various request types under [Terminal API](https://docs.adyen.com/api-explorer/terminal-api/1/overview).

  The response returns a Terminal API response. See [Receiving a synchronous result](https://docs.adyen.com/point-of-sale/design-your-integration/choose-your-architecture/cloud/#sync).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * **Cloud Device API role**

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_account_devices_device_id_sync(
          merchantAccount :: String.t(),
          deviceId :: String.t(),
          body :: String.t(),
          opts :: keyword
        ) :: {:ok, String.t()} | :error
  def post_merchants_merchant_account_devices_device_id_sync(
        merchantAccount,
        deviceId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantAccount: merchantAccount, deviceId: deviceId, body: body],
      call:
        {Adyen.CloudDevice.V1.CloudEndpointsAndConnection,
         :post_merchants_merchant_account_devices_device_id_sync},
      url: "/merchants/#{merchantAccount}/devices/#{deviceId}/sync",
      body: body,
      method: :post,
      request: [{"application/json", :string}],
      response: [{200, :string}],
      opts: opts
    })
  end
end
