defmodule Adyen.NotificationConfiguration.V3.NotificationConfigurationDetailsWrapper do
  @moduledoc """
  Provides struct and type for a NotificationConfigurationDetailsWrapper
  """

  @type t :: %__MODULE__{
          NotificationConfigurationDetails:
            Adyen.NotificationConfiguration.V3.NotificationConfigurationDetails.t() | nil
        }

  defstruct [:NotificationConfigurationDetails]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      NotificationConfigurationDetails:
        {Adyen.NotificationConfiguration.V3.NotificationConfigurationDetails, :t}
    ]
  end
end
