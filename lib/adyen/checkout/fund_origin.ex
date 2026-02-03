defmodule Adyen.Checkout.FundOrigin do
  @moduledoc """
  Provides struct and type for a FundOrigin
  """

  alias Adyen.Checkout.Address
  alias Adyen.Checkout.Name

  @type t :: %__MODULE__{
          billingAddress: Address.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Name.t() | nil,
          telephoneNumber: String.t() | nil,
          walletIdentifier: String.t() | nil
        }

  defstruct [:billingAddress, :shopperEmail, :shopperName, :telephoneNumber, :walletIdentifier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingAddress: {Address, :t},
      shopperEmail: :string,
      shopperName: {Name, :t},
      telephoneNumber: :string,
      walletIdentifier: :string
    ]
  end
end
