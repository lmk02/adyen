defmodule Adyen.NotificationConfiguration.V1.NotificationEventConfigurationWrapper do
  @moduledoc """
  Provides struct and type for a NotificationEventConfigurationWrapper
  """

  @type t :: %__MODULE__{
          NotificationEventConfiguration:
            Adyen.NotificationConfiguration.V1.NotificationEventConfiguration.t() | nil
        }

  defstruct [:NotificationEventConfiguration]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      NotificationEventConfiguration:
        {Adyen.NotificationConfiguration.V1.NotificationEventConfiguration, :t}
    ]
  end
end
