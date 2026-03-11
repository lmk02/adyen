defmodule Adyen.NotificationConfiguration.GetNotificationConfigurationResponse do
  @moduledoc """
  Provides struct and type for a GetNotificationConfigurationResponse
  """

  @type t :: %__MODULE__{
          configurationDetails:
            Adyen.NotificationConfiguration.NotificationConfigurationDetails.t(),
          invalidFields: [Adyen.NotificationConfiguration.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:configurationDetails, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurationDetails:
        {Adyen.NotificationConfiguration.NotificationConfigurationDetails, :t},
      invalidFields: [{Adyen.NotificationConfiguration.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
