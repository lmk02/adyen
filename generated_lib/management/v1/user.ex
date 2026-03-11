defmodule Adyen.Management.V1.User do
  @moduledoc """
  Provides struct and type for a User
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V1.Links.t() | nil,
          accountGroups: [String.t()] | nil,
          active: boolean | nil,
          apps: [String.t()] | nil,
          email: String.t(),
          id: String.t(),
          name: Adyen.Management.V1.Name.t() | nil,
          roles: [String.t()],
          timeZoneCode: String.t(),
          username: String.t()
        }

  defstruct [
    :_links,
    :accountGroups,
    :active,
    :apps,
    :email,
    :id,
    :name,
    :roles,
    :timeZoneCode,
    :username
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V1.Links, :t},
      accountGroups: [:string],
      active: :boolean,
      apps: [:string],
      email: :string,
      id: :string,
      name: {Adyen.Management.V1.Name, :t},
      roles: [:string],
      timeZoneCode: :string,
      username: :string
    ]
  end
end
