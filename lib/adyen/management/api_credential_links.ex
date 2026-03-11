defmodule Adyen.Management.ApiCredentialLinks do
  @moduledoc """
  Provides struct and type for a ApiCredentialLinks
  """

  @type t :: %__MODULE__{
          allowedOrigins: Adyen.Management.LinksElement.t() | nil,
          company: Adyen.Management.LinksElement.t() | nil,
          generateApiKey: Adyen.Management.LinksElement.t() | nil,
          generateClientKey: Adyen.Management.LinksElement.t() | nil,
          merchant: Adyen.Management.LinksElement.t() | nil,
          self: Adyen.Management.LinksElement.t()
        }

  defstruct [:allowedOrigins, :company, :generateApiKey, :generateClientKey, :merchant, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedOrigins: {Adyen.Management.LinksElement, :t},
      company: {Adyen.Management.LinksElement, :t},
      generateApiKey: {Adyen.Management.LinksElement, :t},
      generateClientKey: {Adyen.Management.LinksElement, :t},
      merchant: {Adyen.Management.LinksElement, :t},
      self: {Adyen.Management.LinksElement, :t}
    ]
  end
end
