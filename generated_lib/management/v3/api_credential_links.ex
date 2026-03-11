defmodule Adyen.Management.V3.ApiCredentialLinks do
  @moduledoc """
  Provides struct and type for a ApiCredentialLinks
  """

  @type t :: %__MODULE__{
          allowedOrigins: Adyen.Management.V3.LinksElement.t() | nil,
          company: Adyen.Management.V3.LinksElement.t() | nil,
          generateApiKey: Adyen.Management.V3.LinksElement.t() | nil,
          generateClientKey: Adyen.Management.V3.LinksElement.t() | nil,
          merchant: Adyen.Management.V3.LinksElement.t() | nil,
          self: Adyen.Management.V3.LinksElement.t()
        }

  defstruct [:allowedOrigins, :company, :generateApiKey, :generateClientKey, :merchant, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedOrigins: {Adyen.Management.V3.LinksElement, :t},
      company: {Adyen.Management.V3.LinksElement, :t},
      generateApiKey: {Adyen.Management.V3.LinksElement, :t},
      generateClientKey: {Adyen.Management.V3.LinksElement, :t},
      merchant: {Adyen.Management.V3.LinksElement, :t},
      self: {Adyen.Management.V3.LinksElement, :t}
    ]
  end
end
