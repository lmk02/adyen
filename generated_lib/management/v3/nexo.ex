defmodule Adyen.Management.V3.Nexo do
  @moduledoc """
  Provides struct and type for a Nexo
  """

  @type t :: %__MODULE__{
          displayUrls: Adyen.Management.V3.NotificationUrl.t() | nil,
          encryptionKey: Adyen.Management.V3.Key.t() | nil,
          eventUrls: Adyen.Management.V3.EventUrl.t() | nil,
          nexoEventUrls: [String.t()] | nil,
          notification: Adyen.Management.V3.Notification.t() | nil
        }

  defstruct [:displayUrls, :encryptionKey, :eventUrls, :nexoEventUrls, :notification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayUrls: {Adyen.Management.V3.NotificationUrl, :t},
      encryptionKey: {Adyen.Management.V3.Key, :t},
      eventUrls: {Adyen.Management.V3.EventUrl, :t},
      nexoEventUrls: [:string],
      notification: {Adyen.Management.V3.Notification, :t}
    ]
  end
end
