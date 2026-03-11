defmodule Adyen.Payment.V30.Address do
  @moduledoc """
  Provides struct and type for a Address
  """

  @type t :: %__MODULE__{
          city: String.t(),
          country: String.t(),
          houseNumberOrName: String.t(),
          postalCode: String.t(),
          stateOrProvince: String.t() | nil,
          street: String.t()
        }

  defstruct [:city, :country, :houseNumberOrName, :postalCode, :stateOrProvince, :street]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      country: :string,
      houseNumberOrName: :string,
      postalCode: :string,
      stateOrProvince: :string,
      street: :string
    ]
  end
end
