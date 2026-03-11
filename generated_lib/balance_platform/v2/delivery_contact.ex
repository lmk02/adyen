defmodule Adyen.BalancePlatform.V2.DeliveryContact do
  @moduledoc """
  Provides struct and type for a DeliveryContact
  """

  @type t :: %__MODULE__{
          address: Adyen.BalancePlatform.V2.DeliveryAddress.t(),
          company: String.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          name: Adyen.BalancePlatform.V2.Name.t(),
          phoneNumber: Adyen.BalancePlatform.V2.PhoneNumber.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [:address, :company, :email, :fullPhoneNumber, :name, :phoneNumber, :webAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.BalancePlatform.V2.DeliveryAddress, :t},
      company: :string,
      email: :string,
      fullPhoneNumber: :string,
      name: {Adyen.BalancePlatform.V2.Name, :t},
      phoneNumber: {Adyen.BalancePlatform.V2.PhoneNumber, :t},
      webAddress: :string
    ]
  end
end
