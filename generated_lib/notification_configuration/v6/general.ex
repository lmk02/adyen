defmodule Adyen.NotificationConfiguration.V6.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Subscribe to notifications

  Creates a subscription to notifications informing you of events on your platform. After the subscription is created, the events specified in the configuration will be sent to the URL specified in the configuration. Subscriptions must be configured on a per-event basis (as opposed to, for example, a per-account holder basis), so all event notifications of a marketplace and of a given type will be sent to the same endpoint(s). A marketplace may have multiple endpoints if desired; an event notification may be sent to as many or as few different endpoints as configured.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_notification_configuration(
          body :: Adyen.NotificationConfiguration.V6.CreateNotificationConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.NotificationConfiguration.V6.GetNotificationConfigurationResponse.t()}
          | {:error, Adyen.NotificationConfiguration.V6.ServiceError.t()}
  def post_create_notification_configuration(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.NotificationConfiguration.V6.General, :post_create_notification_configuration},
      url: "/createNotificationConfiguration",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.NotificationConfiguration.V6.CreateNotificationConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.NotificationConfiguration.V6.GetNotificationConfigurationResponse, :t}},
        {400, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {401, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {403, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {422, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {500, {Adyen.NotificationConfiguration.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete a notification subscription configuration

  Deletes an existing notification subscription configuration. After the subscription is deleted, no further event notifications will be sent to the URL defined in the subscription.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_notification_configurations(
          body :: Adyen.NotificationConfiguration.V6.DeleteNotificationConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.NotificationConfiguration.V6.GenericResponse.t()}
          | {:error, Adyen.NotificationConfiguration.V6.ServiceError.t()}
  def post_delete_notification_configurations(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call:
        {Adyen.NotificationConfiguration.V6.General, :post_delete_notification_configurations},
      url: "/deleteNotificationConfigurations",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.NotificationConfiguration.V6.DeleteNotificationConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.NotificationConfiguration.V6.GenericResponse, :t}},
        {400, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {401, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {403, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {422, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {500, {Adyen.NotificationConfiguration.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a notification subscription configuration

  Returns the details of the configuration of a notification subscription.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_notification_configuration(
          body :: Adyen.NotificationConfiguration.V6.GetNotificationConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.NotificationConfiguration.V6.GetNotificationConfigurationResponse.t()}
          | {:error, Adyen.NotificationConfiguration.V6.ServiceError.t()}
  def post_get_notification_configuration(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.NotificationConfiguration.V6.General, :post_get_notification_configuration},
      url: "/getNotificationConfiguration",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.NotificationConfiguration.V6.GetNotificationConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.NotificationConfiguration.V6.GetNotificationConfigurationResponse, :t}},
        {400, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {401, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {403, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {422, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {500, {Adyen.NotificationConfiguration.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of notification subscription configurations

  Returns the details of the configurations of all of the notification subscriptions in the platform of the executing user.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_notification_configuration_list(
          body :: Adyen.NotificationConfiguration.V6.EmptyRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.NotificationConfiguration.V6.GetNotificationConfigurationListResponse.t()}
          | {:error, Adyen.NotificationConfiguration.V6.ServiceError.t()}
  def post_get_notification_configuration_list(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call:
        {Adyen.NotificationConfiguration.V6.General, :post_get_notification_configuration_list},
      url: "/getNotificationConfigurationList",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.NotificationConfiguration.V6.EmptyRequest, :t}}],
      response: [
        {200, {Adyen.NotificationConfiguration.V6.GetNotificationConfigurationListResponse, :t}},
        {400, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {401, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {403, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {422, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {500, {Adyen.NotificationConfiguration.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Test a notification configuration

  Tests an existing notification subscription configuration. For each event type specified, a test notification will be generated and sent to the URL configured in the subscription specified.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_test_notification_configuration(
          body :: Adyen.NotificationConfiguration.V6.TestNotificationConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.NotificationConfiguration.V6.TestNotificationConfigurationResponse.t()}
          | {:error, Adyen.NotificationConfiguration.V6.ServiceError.t()}
  def post_test_notification_configuration(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.NotificationConfiguration.V6.General, :post_test_notification_configuration},
      url: "/testNotificationConfiguration",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.NotificationConfiguration.V6.TestNotificationConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.NotificationConfiguration.V6.TestNotificationConfigurationResponse, :t}},
        {400, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {401, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {403, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {422, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {500, {Adyen.NotificationConfiguration.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a notification subscription configuration

  Updates an existing notification subscription configuration. If you are updating the event types, you must provide all event types, otherwise the previous event type configuration will be overwritten.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_update_notification_configuration(
          body :: Adyen.NotificationConfiguration.V6.UpdateNotificationConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.NotificationConfiguration.V6.GetNotificationConfigurationResponse.t()}
          | {:error, Adyen.NotificationConfiguration.V6.ServiceError.t()}
  def post_update_notification_configuration(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.NotificationConfiguration.V6.General, :post_update_notification_configuration},
      url: "/updateNotificationConfiguration",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.NotificationConfiguration.V6.UpdateNotificationConfigurationRequest, :t}}
      ],
      response: [
        {200, {Adyen.NotificationConfiguration.V6.GetNotificationConfigurationResponse, :t}},
        {400, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {401, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {403, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {422, {Adyen.NotificationConfiguration.V6.ServiceError, :t}},
        {500, {Adyen.NotificationConfiguration.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
