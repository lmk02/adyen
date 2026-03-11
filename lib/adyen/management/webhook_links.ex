defmodule Adyen.Management.WebhookLinks do
  @moduledoc """
  Provides struct and type for a WebhookLinks
  """

  @type t :: %__MODULE__{
          company: Adyen.Management.LinksElement.t() | nil,
          generateHmac: Adyen.Management.LinksElement.t(),
          merchant: Adyen.Management.LinksElement.t() | nil,
          self: Adyen.Management.LinksElement.t(),
          testWebhook: Adyen.Management.LinksElement.t()
        }

  defstruct [:company, :generateHmac, :merchant, :self, :testWebhook]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      company: {Adyen.Management.LinksElement, :t},
      generateHmac: {Adyen.Management.LinksElement, :t},
      merchant: {Adyen.Management.LinksElement, :t},
      self: {Adyen.Management.LinksElement, :t},
      testWebhook: {Adyen.Management.LinksElement, :t}
    ]
  end
end
