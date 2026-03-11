defmodule Adyen.Management.V3.ShippingLocation do
  @moduledoc """
  Provides struct and type for a ShippingLocation
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.V3.Address.t() | nil,
          contact: Adyen.Management.V3.Contact.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil
        }

  defstruct [:address, :contact, :id, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Management.V3.Address, :t},
      contact: {Adyen.Management.V3.Contact, :t},
      id: :string,
      name: :string
    ]
  end
end
