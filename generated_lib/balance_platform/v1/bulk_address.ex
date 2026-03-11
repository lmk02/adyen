defmodule Adyen.BalancePlatform.V1.BulkAddress do
  @moduledoc """
  Provides struct and type for a BulkAddress
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          company: String.t() | nil,
          country: String.t(),
          email: String.t() | nil,
          houseNumberOrName: String.t() | nil,
          mobile: String.t() | nil,
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil,
          street: String.t() | nil
        }

  defstruct [
    :city,
    :company,
    :country,
    :email,
    :houseNumberOrName,
    :mobile,
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
      company: :string,
      country: :string,
      email: :string,
      houseNumberOrName: :string,
      mobile: :string,
      postalCode: :string,
      stateOrProvince: :string,
      street: :string
    ]
  end
end
