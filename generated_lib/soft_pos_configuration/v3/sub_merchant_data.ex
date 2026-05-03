defmodule Adyen.SoftPOSConfiguration.V3.SubMerchantData do
  @moduledoc """
  Provides struct and type for a SubMerchantData
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          displayName: String.t(),
          email: String.t() | nil,
          id: String.t(),
          mcc: String.t(),
          name: String.t(),
          phoneNumber: String.t() | nil,
          postalCode: String.t() | nil,
          state: String.t() | nil,
          street: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :city,
    :country,
    :displayName,
    :email,
    :id,
    :mcc,
    :name,
    :phoneNumber,
    :postalCode,
    :state,
    :street,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      country: :string,
      displayName: :string,
      email: :string,
      id: :string,
      mcc: :string,
      name: :string,
      phoneNumber: :string,
      postalCode: :string,
      state: :string,
      street: :string,
      taxId: :string
    ]
  end
end
