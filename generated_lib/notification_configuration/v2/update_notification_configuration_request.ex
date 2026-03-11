defmodule Adyen.NotificationConfiguration.V2.UpdateNotificationConfigurationRequest do
  @moduledoc """
  Provides struct and type for a UpdateNotificationConfigurationRequest
  """

  @type t :: %__MODULE__{
          configurationDetails:
            Adyen.NotificationConfiguration.V2.NotificationConfigurationDetails.t()
        }

  defstruct [:configurationDetails]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurationDetails:
        {Adyen.NotificationConfiguration.V2.NotificationConfigurationDetails, :t}
    ]
  end
end
