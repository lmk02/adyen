defmodule Adyen.BalancePlatform.ManageSCADevices do
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
          :ok | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def delete_registered_devices_id(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:paymentInstrumentId])

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.ManageSCADevices, :delete_registered_devices_id},
      url: "/registeredDevices/#{id}",
      method: :delete,
      query: query,
      response: [
        {204, :null},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
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
          {:ok, Adyen.BalancePlatform.SearchRegisteredDevicesResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_registered_devices(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :paymentInstrumentId])

    client.request(%{
      args: [],
      call: {Adyen.BalancePlatform.ManageSCADevices, :get_registered_devices},
      url: "/registeredDevices",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.SearchRegisteredDevicesResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete an association between an SCA device and a resource

  Completes an association between a user's registered SCA device and an Adyen resource. For example, you can associate an SCA device with additional [business accounts](https://docs.adyen.com/platforms/business-accounts/sca/register-devices) or [Adyen-issued cards](https://docs.adyen.com/issuing/3d-secure/oob-auth-sdk/register-devices).

  To complete the association, this endpoint validates the authentication data of the registered device.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_registered_devices_device_id_associations(
          deviceId :: String.t(),
          body :: Adyen.BalancePlatform.AssociationFinaliseRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.AssociationFinaliseResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def patch_registered_devices_device_id_associations(deviceId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [deviceId: deviceId, body: body],
      call:
        {Adyen.BalancePlatform.ManageSCADevices, :patch_registered_devices_device_id_associations},
      url: "/registeredDevices/#{deviceId}/associations",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.AssociationFinaliseRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.AssociationFinaliseResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
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
          body :: Adyen.BalancePlatform.RegisterSCARequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.RegisterSCAFinalResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def patch_registered_devices_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.ManageSCADevices, :patch_registered_devices_id},
      url: "/registeredDevices/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.RegisterSCARequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.RegisterSCAFinalResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
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
          body :: Adyen.BalancePlatform.RegisterSCARequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.RegisterSCAResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def post_registered_devices(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.ManageSCADevices, :post_registered_devices},
      url: "/registeredDevices",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.RegisterSCARequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.RegisterSCAResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Initiate an association between an SCA device and a resource

  Initiates an association between a user's registered SCA device and an Adyen resource. For example, you can associate an SCA device with additional [business accounts](https://docs.adyen.com/platforms/business-accounts/sca/register-devices) or [Adyen-issued cards](https://docs.adyen.com/issuing/3d-secure/oob-auth-sdk/register-devices).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_registered_devices_device_id_associations(
          deviceId :: String.t(),
          body :: Adyen.BalancePlatform.AssociationInitiateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.AssociationInitiateResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def post_registered_devices_device_id_associations(deviceId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [deviceId: deviceId, body: body],
      call:
        {Adyen.BalancePlatform.ManageSCADevices, :post_registered_devices_device_id_associations},
      url: "/registeredDevices/#{deviceId}/associations",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.AssociationInitiateRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.AssociationInitiateResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
