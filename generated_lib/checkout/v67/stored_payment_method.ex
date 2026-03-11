defmodule Adyen.Checkout.V67.StoredPaymentMethod do
  @moduledoc """
  Provides struct and type for a StoredPaymentMethod
  """

  @type t :: %__MODULE__{
          bankAccountNumber: String.t() | nil,
          bankLocationId: String.t() | nil,
          brand: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          holderName: String.t() | nil,
          iban: String.t() | nil,
          id: String.t() | nil,
          lastFour: String.t() | nil,
          name: String.t() | nil,
          ownerName: String.t() | nil,
          shopperEmail: String.t() | nil,
          supportedShopperInteractions: [String.t()] | nil,
          type: String.t() | nil
        }

  defstruct [
    :bankAccountNumber,
    :bankLocationId,
    :brand,
    :expiryMonth,
    :expiryYear,
    :holderName,
    :iban,
    :id,
    :lastFour,
    :name,
    :ownerName,
    :shopperEmail,
    :supportedShopperInteractions,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccountNumber: :string,
      bankLocationId: :string,
      brand: :string,
      expiryMonth: :string,
      expiryYear: :string,
      holderName: :string,
      iban: :string,
      id: :string,
      lastFour: :string,
      name: :string,
      ownerName: :string,
      shopperEmail: :string,
      supportedShopperInteractions: [:string],
      type: :string
    ]
  end
end
