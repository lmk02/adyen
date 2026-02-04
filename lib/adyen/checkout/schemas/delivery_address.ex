defmodule Adyen.Checkout.DeliveryAddress do
  @moduledoc """
  Provides struct and type for a DeliveryAddress
  """

  @type t :: %__MODULE__{
          city: String.t(),
          country: String.t(),
          firstName: String.t() | nil,
          houseNumberOrName: String.t(),
          lastName: String.t() | nil,
          postalCode: String.t(),
          stateOrProvince: String.t() | nil,
          street: String.t()
        }

  defstruct [
    :city,
    :country,
    :firstName,
    :houseNumberOrName,
    :lastName,
    :postalCode,
    :stateOrProvince,
    :street
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      country: :string,
      firstName: :string,
      houseNumberOrName: :string,
      lastName: :string,
      postalCode: :string,
      stateOrProvince: :string,
      street: :string
    ]
  end
end
