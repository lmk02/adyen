defmodule Adyen.NotificationConfiguration.V5.GetNotificationConfigurationRequest do
  @moduledoc """
  Provides struct and type for a GetNotificationConfigurationRequest
  """

  @type t :: %__MODULE__{notificationId: integer}

  defstruct [:notificationId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [notificationId: {:integer, "int64"}]
  end
end
