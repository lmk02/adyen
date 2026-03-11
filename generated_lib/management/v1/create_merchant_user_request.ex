defmodule Adyen.Management.V1.CreateMerchantUserRequest do
  @moduledoc """
  Provides struct and type for a CreateMerchantUserRequest
  """

  @type t :: %__MODULE__{
          accountGroups: [String.t()] | nil,
          email: String.t(),
          loginMethod: String.t() | nil,
          name: Adyen.Management.V1.Name.t(),
          roles: [String.t()] | nil,
          timeZoneCode: String.t() | nil,
          username: String.t()
        }

  defstruct [:accountGroups, :email, :loginMethod, :name, :roles, :timeZoneCode, :username]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountGroups: [:string],
      email: :string,
      loginMethod: :string,
      name: {Adyen.Management.V1.Name, :t},
      roles: [:string],
      timeZoneCode: :string,
      username: :string
    ]
  end
end
