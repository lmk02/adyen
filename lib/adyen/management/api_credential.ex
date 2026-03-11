defmodule Adyen.Management.ApiCredential do
  @moduledoc """
  Provides struct and type for a ApiCredential
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.ApiCredentialLinks.t() | nil,
          active: boolean,
          allowedIpAddresses: [String.t()],
          allowedOrigins: [Adyen.Management.AllowedOrigin.t()] | nil,
          clientKey: String.t(),
          description: String.t() | nil,
          id: String.t(),
          roles: [String.t()],
          username: String.t()
        }

  defstruct [
    :_links,
    :active,
    :allowedIpAddresses,
    :allowedOrigins,
    :clientKey,
    :description,
    :id,
    :roles,
    :username
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.ApiCredentialLinks, :t},
      active: :boolean,
      allowedIpAddresses: [:string],
      allowedOrigins: [{Adyen.Management.AllowedOrigin, :t}],
      clientKey: :string,
      description: :string,
      id: :string,
      roles: [:string],
      username: :string
    ]
  end
end
