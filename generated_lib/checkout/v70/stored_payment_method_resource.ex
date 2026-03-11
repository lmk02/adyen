defmodule Adyen.Checkout.V70.StoredPaymentMethodResource do
  @moduledoc """
  Provides struct and type for a StoredPaymentMethodResource
  """

  @type t :: %__MODULE__{
          brand: String.t() | nil,
          cardBin: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          externalResponseCode: String.t() | nil,
          externalTokenReference: String.t() | nil,
          holderName: String.t() | nil,
          iban: String.t() | nil,
          id: String.t() | nil,
          issuerName: String.t() | nil,
          lastFour: String.t() | nil,
          name: String.t() | nil,
          networkTxReference: String.t() | nil,
          ownerName: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperReference: String.t() | nil,
          supportedRecurringProcessingModels: [String.t()] | nil,
          type: String.t() | nil
        }

  defstruct [
    :brand,
    :cardBin,
    :expiryMonth,
    :expiryYear,
    :externalResponseCode,
    :externalTokenReference,
    :holderName,
    :iban,
    :id,
    :issuerName,
    :lastFour,
    :name,
    :networkTxReference,
    :ownerName,
    :shopperEmail,
    :shopperReference,
    :supportedRecurringProcessingModels,
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
      externalResponseCode: :string,
      externalTokenReference: :string,
      holderName: :string,
      iban: :string,
      id: :string,
      issuerName: :string,
      lastFour: :string,
      name: :string,
      networkTxReference: :string,
      ownerName: :string,
      shopperEmail: :string,
      shopperReference: :string,
      supportedRecurringProcessingModels: [:string],
      type: :string
    ]
  end
end
