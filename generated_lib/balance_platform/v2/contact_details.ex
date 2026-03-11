defmodule Adyen.BalancePlatform.V2.ContactDetails do
  @moduledoc """
  Provides struct and type for a ContactDetails
  """

  @type t :: %__MODULE__{
          address: Adyen.BalancePlatform.V2.Address.t(),
          email: String.t(),
          phone: Adyen.BalancePlatform.V2.Phone.t(),
          webAddress: String.t() | nil
        }

  defstruct [:address, :email, :phone, :webAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.BalancePlatform.V2.Address, :t},
      email: :string,
      phone: {Adyen.BalancePlatform.V2.Phone, :t},
      webAddress: :string
    ]
  end
end
