defmodule Adyen.Checkout.V49.StoredPaymentMethodResource do
  @moduledoc """
  Provides struct and type for a StoredPaymentMethodResource
  """

  @type t :: %__MODULE__{
          brand: String.t() | nil,
          cardBin: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          holderName: String.t() | nil,
          iban: String.t() | nil,
          id: String.t() | nil,
          lastFour: String.t() | nil,
          name: String.t() | nil,
          networkTxReference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperReference: String.t() | nil,
          supportedShopperInteractions: [String.t()] | nil,
          type: String.t() | nil
        }

  defstruct [
    :brand,
    :cardBin,
    :expiryMonth,
    :expiryYear,
    :holderName,
    :iban,
    :id,
    :lastFour,
    :name,
    :networkTxReference,
    :shopperEmail,
    :shopperReference,
    :supportedShopperInteractions,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brand: :string,
      cardBin: :string,
      expiryMonth: :string,
      expiryYear: :string,
      holderName: :string,
      iban: :string,
      id: :string,
      lastFour: :string,
      name: :string,
      networkTxReference: :string,
      shopperEmail: :string,
      shopperReference: :string,
      supportedShopperInteractions: [:string],
      type: :string
    ]
  end
end
