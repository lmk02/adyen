defmodule Adyen.BalancePlatform.V2.WebhookSettings do
  @moduledoc """
  Provides struct and type for a WebhookSettings
  """

  @type t :: %__MODULE__{webhookSettings: [Adyen.BalancePlatform.V2.WebhookSetting.t()] | nil}

  defstruct [:webhookSettings]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [webhookSettings: [{Adyen.BalancePlatform.V2.WebhookSetting, :t}]]
  end
end
