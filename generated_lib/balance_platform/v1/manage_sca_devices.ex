defmodule Adyen.BalancePlatform.V1.ManageSCADevices do
  @moduledoc """
  Provides API endpoints related to manage sca devices
  """

  @default_client Adyen.Client

  @doc """
  Delete a registration of an SCA device

  Deletes an SCA device from the list of registered devices of a specific payment instrument.

  ## Options

    * `paymentInstrumentId`: The unique identifier of the payment instrument linked to the SCA device.

  """
  @spec delete_registered_devices_id(id :: String.t(), opts :: keyword) ::
          :ok | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def delete_registered_devices_id(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:paymentInstrumentId])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.ManageSCADevices, :delete_registered_devices_id},
      url: "/registeredDevices/#{id}",
      method: :delete,
      query: query,
      response: [
        {204, :null},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of registered SCA devices

  Get a paginated list of the SCA devices you have currently registered for a specific payment instrument.

  ## Options

    * `paymentInstrumentId`: The unique identifier of a payment instrument. It limits the returned list to SCA devices associated to this payment instrument.
    * `pageNumber`: The index of the page to retrieve. The index of the first page is 0 (zero).
      
      Default: 0.
    * `pageSize`: The number of items to have on a page.
      
      Default: 20. Maximum: 100.

  """
  @spec get_registered_devices(opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.SearchRegisteredDevicesResponse.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_registered_devices(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :paymentInstrumentId])

    client.request(%{
      args: [],
      call: {Adyen.BalancePlatform.V1.ManageSCADevices, :get_registered_devices},
      url: "/registeredDevices",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V1.SearchRegisteredDevicesResponse, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete the registration of an SCA device

  Completes the registration of an SCA device by validating the authentication data of the device. You can register SCA devices for [business accounts](https://docs.adyen.com/platforms/business-accounts/sca) or [Adyen-issued cards](https://docs.adyen.com/issuing/3d-secure/oob-auth-sdk).


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_registered_devices_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V1.RegisterSCARequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.RegisterSCAFinalResponse.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def patch_registered_devices_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V1.ManageSCADevices, :patch_registered_devices_id},
      url: "/registeredDevices/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V1.RegisterSCARequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.RegisterSCAFinalResponse, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Initiate the registration of an SCA device

  Initiates the registration of a user's device for Strong Customer Authentication (SCA). You can register SCA devices for [business accounts](https://docs.adyen.com/platforms/business-accounts/sca/register-devices) or [Adyen-issued cards](https://docs.adyen.com/issuing/3d-secure/oob-auth-sdk/register-devices).

  For a successful request, the device must be eligible for SCA.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_registered_devices(
          body :: Adyen.BalancePlatform.V1.RegisterSCARequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.RegisterSCAResponse.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def post_registered_devices(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.ManageSCADevices, :post_registered_devices},
      url: "/registeredDevices",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.RegisterSCARequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.RegisterSCAResponse, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
