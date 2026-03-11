defmodule Adyen.LegalEntity.V2.Address do
  @moduledoc """
  Provides struct and type for a Address
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t(),
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil,
          street: String.t() | nil,
          street2: String.t() | nil
        }

  defstruct [:city, :country, :postalCode, :stateOrProvince, :street, :street2]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      country: :string,
      postalCode: :string,
      stateOrProvince: :string,
      street: :string,
      street2: :string
    ]
  end
end
