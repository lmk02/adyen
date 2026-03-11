defmodule Adyen.Management.V3.WebhookLinks do
  @moduledoc """
  Provides struct and type for a WebhookLinks
  """

  @type t :: %__MODULE__{
          company: Adyen.Management.V3.LinksElement.t() | nil,
          generateHmac: Adyen.Management.V3.LinksElement.t(),
          merchant: Adyen.Management.V3.LinksElement.t() | nil,
          self: Adyen.Management.V3.LinksElement.t(),
          testWebhook: Adyen.Management.V3.LinksElement.t()
        }

  defstruct [:company, :generateHmac, :merchant, :self, :testWebhook]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      company: {Adyen.Management.V3.LinksElement, :t},
      generateHmac: {Adyen.Management.V3.LinksElement, :t},
      merchant: {Adyen.Management.V3.LinksElement, :t},
      self: {Adyen.Management.V3.LinksElement, :t},
      testWebhook: {Adyen.Management.V3.LinksElement, :t}
    ]
  end
end
