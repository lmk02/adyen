defmodule Adyen.Management.CreateCompanyUserRequest do
  @moduledoc """
  Provides struct and type for a CreateCompanyUserRequest
  """

  @type t :: %__MODULE__{
          accountGroups: [String.t()] | nil,
          associatedMerchantAccounts: [String.t()] | nil,
          email: String.t(),
          loginMethod: String.t() | nil,
          name: Adyen.Management.Name.t(),
          roles: [String.t()] | nil,
          timeZoneCode: String.t() | nil,
          username: String.t()
        }

  defstruct [
    :accountGroups,
    :associatedMerchantAccounts,
    :email,
    :loginMethod,
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
      accountGroups: [:string],
      associatedMerchantAccounts: [:string],
      email: :string,
      loginMethod: :string,
      name: {Adyen.Management.Name, :t},
      roles: [:string],
      timeZoneCode: :string,
      username: :string
    ]
  end
end
