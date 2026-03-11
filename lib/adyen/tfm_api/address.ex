defmodule Adyen.TfmAPI.Address do
  @moduledoc """
  Provides struct and type for a Address
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          countryCode: String.t() | nil,
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil,
          streetAddress: String.t() | nil,
          streetAddress2: String.t() | nil
        }

  defstruct [:city, :countryCode, :postalCode, :stateOrProvince, :streetAddress, :streetAddress2]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      countryCode: :string,
      postalCode: :string,
      stateOrProvince: :string,
      streetAddress: :string,
      streetAddress2: :string
    ]
  end
end
