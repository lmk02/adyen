defmodule Adyen.Management.V3.MeApiCredential do
  @moduledoc """
  Provides struct and type for a MeApiCredential
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.ApiCredentialLinks.t() | nil,
          active: boolean,
          allowedIpAddresses: [String.t()],
          allowedOrigins: [Adyen.Management.V3.AllowedOrigin.t()] | nil,
          clientKey: String.t(),
          companyName: String.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          roles: [String.t()],
          subjectDN: String.t() | nil,
          username: String.t()
        }

  defstruct [
    :_links,
    :active,
    :allowedIpAddresses,
    :allowedOrigins,
    :clientKey,
    :companyName,
    :description,
    :id,
    :roles,
    :subjectDN,
    :username
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V3.ApiCredentialLinks, :t},
      active: :boolean,
      allowedIpAddresses: [:string],
      allowedOrigins: [{Adyen.Management.V3.AllowedOrigin, :t}],
      clientKey: :string,
      companyName: :string,
      description: :string,
      id: :string,
      roles: [:string],
      subjectDN: :string,
      username: :string
    ]
  end
end
