defmodule Adyen.BalancePlatform.V1.Card do
  @moduledoc """
  Provides struct and type for a Card
  """

  @type t :: %__MODULE__{
          authentication: Adyen.BalancePlatform.V1.Authentication.t() | nil,
          bin: String.t() | nil,
          brand: String.t(),
          brandVariant: String.t(),
          cardholderName: String.t(),
          configuration: Adyen.BalancePlatform.V1.CardConfiguration.t() | nil,
          cvc: String.t() | nil,
          deliveryContact: Adyen.BalancePlatform.V1.Contact.t() | nil,
          expiration: Adyen.BalancePlatform.V1.Expiry.t() | nil,
          formFactor: String.t(),
          lastFour: String.t() | nil,
          number: String.t()
        }

  defstruct [
    :authentication,
    :bin,
    :brand,
    :brandVariant,
    :cardholderName,
    :configuration,
    :cvc,
    :deliveryContact,
    :expiration,
    :formFactor,
    :lastFour,
    :number
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authentication: {Adyen.BalancePlatform.V1.Authentication, :t},
      bin: :string,
      brand: :string,
      brandVariant: :string,
      cardholderName: :string,
      configuration: {Adyen.BalancePlatform.V1.CardConfiguration, :t},
      cvc: :string,
      deliveryContact: {Adyen.BalancePlatform.V1.Contact, :t},
      expiration: {Adyen.BalancePlatform.V1.Expiry, :t},
      formFactor: {:enum, ["physical", "unknown", "virtual"]},
      lastFour: :string,
      number: :string
    ]
  end
end
