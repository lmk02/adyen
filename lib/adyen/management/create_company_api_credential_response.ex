defmodule Adyen.Management.CreateCompanyApiCredentialResponse do
  @moduledoc """
  Provides struct and type for a CreateCompanyApiCredentialResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.ApiCredentialLinks.t() | nil,
          active: boolean,
          allowedIpAddresses: [String.t()],
          allowedOrigins: [Adyen.Management.AllowedOrigin.t()] | nil,
          apiKey: String.t(),
          associatedMerchantAccounts: [String.t()],
          clientKey: String.t(),
          description: String.t() | nil,
          id: String.t(),
          password: String.t(),
          roles: [String.t()],
          username: String.t()
        }

  defstruct [
    :_links,
    :active,
    :allowedIpAddresses,
    :allowedOrigins,
    :apiKey,
    :associatedMerchantAccounts,
    :clientKey,
    :description,
    :id,
    :password,
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
      apiKey: :string,
      associatedMerchantAccounts: [:string],
      clientKey: :string,
      description: :string,
      id: :string,
      password: :string,
      roles: [:string],
      username: :string
    ]
  end
end
