defmodule Adyen.NotificationConfiguration.V4.NotificationConfigurationDetails do
  @moduledoc """
  Provides struct and type for a NotificationConfigurationDetails
  """

  @type t :: %__MODULE__{
          active: boolean | nil,
          apiVersion: integer | nil,
          description: String.t() | nil,
          eventConfigs:
            [Adyen.NotificationConfiguration.V4.NotificationEventConfigurationWrapper.t()] | nil,
          messageFormat: String.t() | nil,
          notificationId: integer | nil,
          notifyPassword: String.t() | nil,
          notifyURL: String.t() | nil,
          notifyUsername: String.t() | nil,
          sendActionHeader: boolean | nil,
          sslProtocol: String.t() | nil
        }

  defstruct [
    :active,
    :apiVersion,
    :description,
    :eventConfigs,
    :messageFormat,
    :notificationId,
    :notifyPassword,
    :notifyURL,
    :notifyUsername,
    :sendActionHeader,
    :sslProtocol
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      active: :boolean,
      apiVersion: {:integer, "int32"},
      description: :string,
      eventConfigs: [
        {Adyen.NotificationConfiguration.V4.NotificationEventConfigurationWrapper, :t}
      ],
      messageFormat: {:enum, ["JSON", "SOAP"]},
      notificationId: {:integer, "int64"},
      notifyPassword: :string,
      notifyURL: :string,
      notifyUsername: :string,
      sendActionHeader: :boolean,
      sslProtocol: {:enum, ["TLSv12", "TLSv13"]}
    ]
  end
end
