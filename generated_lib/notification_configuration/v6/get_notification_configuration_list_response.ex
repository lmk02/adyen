defmodule Adyen.NotificationConfiguration.V6.GetNotificationConfigurationListResponse do
  @moduledoc """
  Provides struct and type for a GetNotificationConfigurationListResponse
  """

  @type t :: %__MODULE__{
          configurations:
            [Adyen.NotificationConfiguration.V6.NotificationConfigurationDetails.t()] | nil,
          invalidFields: [Adyen.NotificationConfiguration.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:configurations, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurations: [{Adyen.NotificationConfiguration.V6.NotificationConfigurationDetails, :t}],
      invalidFields: [{Adyen.NotificationConfiguration.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
