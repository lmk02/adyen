defmodule Adyen.Management.V3.UpdateMerchantUserRequest do
  @moduledoc """
  Provides struct and type for a UpdateMerchantUserRequest
  """

  @type t :: %__MODULE__{
          accountGroups: [String.t()] | nil,
          active: boolean | nil,
          email: String.t() | nil,
          loginMethod: String.t() | nil,
          name: Adyen.Management.V3.Name2.t() | nil,
          roles: [String.t()] | nil,
          timeZoneCode: String.t() | nil
        }

  defstruct [:accountGroups, :active, :email, :loginMethod, :name, :roles, :timeZoneCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountGroups: [:string],
      active: :boolean,
      email: :string,
      loginMethod: :string,
      name: {Adyen.Management.V3.Name2, :t},
      roles: [:string],
      timeZoneCode: :string
    ]
  end
end
