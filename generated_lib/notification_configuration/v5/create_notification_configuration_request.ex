defmodule Adyen.NotificationConfiguration.V5.CreateNotificationConfigurationRequest do
  @moduledoc """
  Provides struct and type for a CreateNotificationConfigurationRequest
  """

  @type t :: %__MODULE__{
          configurationDetails:
            Adyen.NotificationConfiguration.V5.NotificationConfigurationDetails.t()
        }

  defstruct [:configurationDetails]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurationDetails:
        {Adyen.NotificationConfiguration.V5.NotificationConfigurationDetails, :t}
    ]
  end
end
