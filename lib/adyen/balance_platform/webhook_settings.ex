defmodule Adyen.BalancePlatform.WebhookSettings do
  @moduledoc """
  Provides struct and type for a WebhookSettings
  """

  alias Adyen.BalancePlatform.WebhookSetting

  @type t :: %__MODULE__{webhookSettings: [WebhookSetting.t()] | nil}

  defstruct [:webhookSettings]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [webhookSettings: [{WebhookSetting, :t}]]
  end
end
