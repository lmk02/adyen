defmodule Adyen.Management.V3.Address do
  @moduledoc """
  Provides struct and type for a Address
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          companyName: String.t() | nil,
          country: String.t() | nil,
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil,
          streetAddress: String.t() | nil,
          streetAddress2: String.t() | nil
        }

  defstruct [
    :city,
    :companyName,
    :country,
    :postalCode,
    :stateOrProvince,
    :streetAddress,
    :streetAddress2
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      companyName: :string,
      country: :string,
      postalCode: :string,
      stateOrProvince: :string,
      streetAddress: :string,
      streetAddress2: :string
    ]
  end
end
