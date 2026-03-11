defmodule Adyen.Management.V1.WebhookLinks do
  @moduledoc """
  Provides struct and type for a WebhookLinks
  """

  @type t :: %__MODULE__{
          company: Adyen.Management.V1.LinksElement.t() | nil,
          generateHmac: Adyen.Management.V1.LinksElement.t(),
          merchant: Adyen.Management.V1.LinksElement.t() | nil,
          self: Adyen.Management.V1.LinksElement.t(),
          testWebhook: Adyen.Management.V1.LinksElement.t()
        }

  defstruct [:company, :generateHmac, :merchant, :self, :testWebhook]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      company: {Adyen.Management.V1.LinksElement, :t},
      generateHmac: {Adyen.Management.V1.LinksElement, :t},
      merchant: {Adyen.Management.V1.LinksElement, :t},
      self: {Adyen.Management.V1.LinksElement, :t},
      testWebhook: {Adyen.Management.V1.LinksElement, :t}
    ]
  end
end
