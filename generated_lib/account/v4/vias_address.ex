defmodule Adyen.Account.V4.ViasAddress do
  @moduledoc """
  Provides struct and type for a ViasAddress
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t(),
          houseNumberOrName: String.t() | nil,
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil,
          street: String.t() | nil
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
