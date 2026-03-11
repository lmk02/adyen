defmodule Adyen.Management.V3.TestCompanyWebhookRequest do
  @moduledoc """
  Provides struct and type for a TestCompanyWebhookRequest
  """

  @type t :: %__MODULE__{
          merchantIds: [String.t()] | nil,
          notification: Adyen.Management.V3.CustomNotification.t() | nil,
          types: [String.t()] | nil
        }

  defstruct [:merchantIds, :notification, :types]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantIds: [:string],
      notification: {Adyen.Management.V3.CustomNotification, :t},
      types: [:string]
    ]
  end
end
