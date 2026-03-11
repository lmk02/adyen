defmodule Adyen.Management.ShippingLocation do
  @moduledoc """
  Provides struct and type for a ShippingLocation
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.Address.t() | nil,
          contact: Adyen.Management.Contact.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil
        }

  defstruct [:address, :contact, :id, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Management.Address, :t},
      contact: {Adyen.Management.Contact, :t},
      id: :string,
      name: :string
    ]
  end
end
