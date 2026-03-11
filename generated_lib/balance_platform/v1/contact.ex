defmodule Adyen.BalancePlatform.V1.Contact do
  @moduledoc """
  Provides struct and type for a Contact
  """

  @type t :: %__MODULE__{
          address: Adyen.BalancePlatform.V1.Address.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          name: Adyen.BalancePlatform.V1.Name.t() | nil,
          personalData: Adyen.BalancePlatform.V1.PersonalData.t() | nil,
          phoneNumber: Adyen.BalancePlatform.V1.PhoneNumber.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [:address, :email, :fullPhoneNumber, :name, :personalData, :phoneNumber, :webAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.BalancePlatform.V1.Address, :t},
      email: :string,
      fullPhoneNumber: :string,
      name: {Adyen.BalancePlatform.V1.Name, :t},
      personalData: {Adyen.BalancePlatform.V1.PersonalData, :t},
      phoneNumber: {Adyen.BalancePlatform.V1.PhoneNumber, :t},
      webAddress: :string
    ]
  end
end
