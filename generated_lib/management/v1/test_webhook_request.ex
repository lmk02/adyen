defmodule Adyen.Management.V1.TestWebhookRequest do
  @moduledoc """
  Provides struct and type for a TestWebhookRequest
  """

  @type t :: %__MODULE__{
          notification: Adyen.Management.V1.CustomNotification.t() | nil,
          types: [String.t()] | nil
        }

  defstruct [:notification, :types]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [notification: {Adyen.Management.V1.CustomNotification, :t}, types: [:string]]
  end
end
