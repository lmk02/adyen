defmodule Adyen.BalancePlatform.SCADeviceManagement do
  @moduledoc """
  Provides API endpoints related to sca device management
  """

  @default_client Adyen.Client

  @doc """
  Finish registration process for a SCA device

  Finishes the registration process for a new Strong Customer Authentication (SCA) device.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_sca_devices_device_id(
          deviceId :: String.t(),
          body :: Adyen.BalancePlatform.FinishScaDeviceRegistrationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.FinishScaDeviceRegistrationResponse.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def patch_sca_devices_device_id(deviceId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [deviceId: deviceId, body: body],
      call: {Adyen.BalancePlatform.SCADeviceManagement, :patch_sca_devices_device_id},
      url: "/scaDevices/#{deviceId}",
      body: body,
      method: :patch,
      request: [
        {"application/json", {Adyen.BalancePlatform.FinishScaDeviceRegistrationRequest, :t}}
      ],
      response: [
        {200, {Adyen.BalancePlatform.FinishScaDeviceRegistrationResponse, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Begin SCA device registration

  Begins the registration process for a new Strong Customer Authentication (SCA) device.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_sca_devices(
          body :: Adyen.BalancePlatform.BeginScaDeviceRegistrationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.BeginScaDeviceRegistrationResponse.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def post_sca_devices(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.SCADeviceManagement, :post_sca_devices},
      url: "/scaDevices",
      body: body,
      method: :post,
      request: [
        {"application/json", {Adyen.BalancePlatform.BeginScaDeviceRegistrationRequest, :t}}
      ],
      response: [
        {201, {Adyen.BalancePlatform.BeginScaDeviceRegistrationResponse, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a new SCA association for a device

  Creates an association between an SCA-enabled device and an entity, such as an account holder. This action does not guarantee the association is immediately ready for use; its status may be `pendingApproval` if the account holder has existing devices.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_sca_devices_device_id_sca_associations(
          deviceId :: String.t(),
          body :: Adyen.BalancePlatform.SubmitScaAssociationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.SubmitScaAssociationResponse.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def post_sca_devices_device_id_sca_associations(deviceId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [deviceId: deviceId, body: body],
      call:
        {Adyen.BalancePlatform.SCADeviceManagement, :post_sca_devices_device_id_sca_associations},
      url: "/scaDevices/#{deviceId}/scaAssociations",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.SubmitScaAssociationRequest, :t}}],
      response: [
        {201, {Adyen.BalancePlatform.SubmitScaAssociationResponse, :t}},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
