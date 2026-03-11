defmodule Adyen.Management.V1.Nexo do
  @moduledoc """
  Provides struct and type for a Nexo
  """

  @type t :: %__MODULE__{
          displayUrls: Adyen.Management.V1.NotificationUrl.t() | nil,
          encryptionKey: Adyen.Management.V1.Key.t() | nil,
          eventUrls: Adyen.Management.V1.EventUrl.t() | nil,
          nexoEventUrls: [String.t()] | nil,
          notification: Adyen.Management.V1.Notification.t() | nil
        }

  defstruct [:displayUrls, :encryptionKey, :eventUrls, :nexoEventUrls, :notification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayUrls: {Adyen.Management.V1.NotificationUrl, :t},
      encryptionKey: {Adyen.Management.V1.Key, :t},
      eventUrls: {Adyen.Management.V1.EventUrl, :t},
      nexoEventUrls: [:string],
      notification: {Adyen.Management.V1.Notification, :t}
    ]
  end
end
