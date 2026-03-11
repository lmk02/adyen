defmodule Adyen.NotificationConfiguration.V1.GetNotificationConfigurationResponse do
  @moduledoc """
  Provides struct and type for a GetNotificationConfigurationResponse
  """

  @type t :: %__MODULE__{
          configurationDetails:
            Adyen.NotificationConfiguration.V1.NotificationConfigurationDetails.t(),
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:configurationDetails, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurationDetails:
        {Adyen.NotificationConfiguration.V1.NotificationConfigurationDetails, :t},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
