defmodule Adyen.Management.Nexo do
  @moduledoc """
  Provides struct and type for a Nexo
  """

  @type t :: %__MODULE__{
          displayUrls: Adyen.Management.NotificationUrl.t() | nil,
          encryptionKey: Adyen.Management.Key.t() | nil,
          eventUrls: Adyen.Management.EventUrl.t() | nil,
          nexoEventUrls: [String.t()] | nil,
          notification: Adyen.Management.Notification.t() | nil
        }

  defstruct [:displayUrls, :encryptionKey, :eventUrls, :nexoEventUrls, :notification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayUrls: {Adyen.Management.NotificationUrl, :t},
      encryptionKey: {Adyen.Management.Key, :t},
      eventUrls: {Adyen.Management.EventUrl, :t},
      nexoEventUrls: [:string],
      notification: {Adyen.Management.Notification, :t}
    ]
  end
end
