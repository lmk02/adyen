defmodule Adyen.BalancePlatform.V2.BulkAddress do
  @moduledoc """
  Provides struct and type for a BulkAddress
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          company: String.t() | nil,
          country: String.t(),
          email: String.t() | nil,
          houseNumberOrName: String.t() | nil,
          line1: String.t() | nil,
          line2: String.t() | nil,
          line3: String.t() | nil,
          mobile: String.t() | nil,
          name: String.t() | nil,
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
    :line1,
    :line2,
    :line3,
    :mobile,
    :name,
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
      line1: :string,
      line2: :string,
      line3: :string,
      mobile: :string,
      name: :string,
      postalCode: :string,
      stateOrProvince: :string,
      street: :string
    ]
  end
end
