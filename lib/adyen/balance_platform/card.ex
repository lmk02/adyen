defmodule Adyen.BalancePlatform.Card do
  @moduledoc """
  Provides struct and type for a Card
  """

  alias Adyen.BalancePlatform.Authentication
  alias Adyen.BalancePlatform.CardConfiguration
  alias Adyen.BalancePlatform.DeliveryContact
  alias Adyen.BalancePlatform.Expiry

  @type t :: %__MODULE__{
          authentication: Authentication.t() | nil,
          bin: String.t() | nil,
          brand: String.t(),
          brandVariant: String.t(),
          cardholderName: String.t(),
          configuration: CardConfiguration.t() | nil,
          cvc: String.t() | nil,
          deliveryContact: DeliveryContact.t() | nil,
          expiration: Expiry.t() | nil,
          formFactor: String.t(),
          lastFour: String.t() | nil,
          number: String.t() | nil,
          threeDSecure: String.t() | nil,
          usage: String.t() | nil
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
    :number,
    :threeDSecure,
    :usage
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authentication: {Authentication, :t},
      bin: :string,
      brand: :string,
      brandVariant: :string,
      cardholderName: :string,
      configuration: {CardConfiguration, :t},
      cvc: :string,
      deliveryContact: {DeliveryContact, :t},
      expiration: {Expiry, :t},
      formFactor: {:enum, ["physical", "unknown", "virtual"]},
      lastFour: :string,
      number: :string,
      threeDSecure: :string,
      usage: :string
    ]
  end
end
