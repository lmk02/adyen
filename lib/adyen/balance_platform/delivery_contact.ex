defmodule Adyen.BalancePlatform.DeliveryContact do
  @moduledoc """
  Provides struct and type for a DeliveryContact
  """

  alias Adyen.BalancePlatform.DeliveryAddress
  alias Adyen.BalancePlatform.Name
  alias Adyen.BalancePlatform.PhoneNumber

  @type t :: %__MODULE__{
          address: DeliveryAddress.t(),
          company: String.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          name: Name.t(),
          phoneNumber: PhoneNumber.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [:address, :company, :email, :fullPhoneNumber, :name, :phoneNumber, :webAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {DeliveryAddress, :t},
      company: :string,
      email: :string,
      fullPhoneNumber: :string,
      name: {Name, :t},
      phoneNumber: {PhoneNumber, :t},
      webAddress: :string
    ]
  end
end
