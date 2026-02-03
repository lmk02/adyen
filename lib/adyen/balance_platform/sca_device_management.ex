defmodule Adyen.BalancePlatform.SCADeviceManagement do
  @moduledoc """
  Provides API endpoints related to sca device management
  """

  alias Adyen.BalancePlatform.BeginScaDeviceRegistrationRequest
  alias Adyen.BalancePlatform.BeginScaDeviceRegistrationResponse
  alias Adyen.BalancePlatform.DefaultErrorResponseEntity
  alias Adyen.BalancePlatform.FinishScaDeviceRegistrationRequest
  alias Adyen.BalancePlatform.FinishScaDeviceRegistrationResponse
  alias Adyen.BalancePlatform.SCADeviceManagement
  alias Adyen.BalancePlatform.SubmitScaAssociationRequest
  alias Adyen.BalancePlatform.SubmitScaAssociationResponse

  @default_client Adyen.Client

  @doc """
  Finish registration process for a SCA device

  Finishes the registration process for a new Strong Customer Authentication (SCA) device.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_sca_device(
          deviceId :: String.t(),
          body :: FinishScaDeviceRegistrationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, FinishScaDeviceRegistrationResponse.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def update_sca_device(deviceId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [deviceId: deviceId, body: body],
      call: {SCADeviceManagement, :update_sca_device},
      url: "/scaDevices/#{deviceId}",
      body: body,
      method: :patch,
      request: [
        {"application/json", {FinishScaDeviceRegistrationRequest, :t}}
      ],
      response: [
        {200, {FinishScaDeviceRegistrationResponse, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
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
  @spec create_sca_devices(
          body :: BeginScaDeviceRegistrationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, BeginScaDeviceRegistrationResponse.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def create_sca_devices(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {SCADeviceManagement, :create_sca_devices},
      url: "/scaDevices",
      body: body,
      method: :post,
      request: [
        {"application/json", {BeginScaDeviceRegistrationRequest, :t}}
      ],
      response: [
        {201, {BeginScaDeviceRegistrationResponse, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
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
  @spec create_sca_device_id_sca_associations(
          deviceId :: String.t(),
          body :: SubmitScaAssociationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, SubmitScaAssociationResponse.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def create_sca_device_id_sca_associations(deviceId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [deviceId: deviceId, body: body],
      call: {SCADeviceManagement, :create_sca_device_id_sca_associations},
      url: "/scaDevices/#{deviceId}/scaAssociations",
      body: body,
      method: :post,
      request: [{"application/json", {SubmitScaAssociationRequest, :t}}],
      response: [
        {201, {SubmitScaAssociationResponse, :t}},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}},
        {500, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
