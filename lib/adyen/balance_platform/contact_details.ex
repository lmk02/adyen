defmodule Adyen.BalancePlatform.ContactDetails do
  @moduledoc """
  Provides struct and type for a ContactDetails
  """

  alias Adyen.BalancePlatform.Address
  alias Adyen.BalancePlatform.Phone

  @type t :: %__MODULE__{
          address: Address.t(),
          email: String.t(),
          phone: Phone.t(),
          webAddress: String.t() | nil
        }

  defstruct [:address, :email, :phone, :webAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Address, :t},
      email: :string,
      phone: {Phone, :t},
      webAddress: :string
    ]
  end
end
