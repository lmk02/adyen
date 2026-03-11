defmodule Adyen.NotificationConfiguration.V4.GetNotificationConfigurationListResponse do
  @moduledoc """
  Provides struct and type for a GetNotificationConfigurationListResponse
  """

  @type t :: %__MODULE__{
          configurations:
            [Adyen.NotificationConfiguration.V4.NotificationConfigurationDetailsWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:configurations, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurations: [
        {Adyen.NotificationConfiguration.V4.NotificationConfigurationDetailsWrapper, :t}
      ],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
